/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> ui.c
 *
 */

#include "ui.h"

static volatile uint8_t State = WELCOME_STATE;
static volatile uint8_t Changed = CHANGE_SCREEN_X;
static volatile uint8_t changed = CHANGE_SCREEN_X;

void tick_ui(void){
    static uint8_t bursting = 0;
    uint8_t action = get_button_action();
    uint8_t ss;
    uint32_t delay;

    /* Burst will start pump if up to heat regardless of tank level 
    Burst + Function will always run the pump */
    if(action == BUTTON_BURST || action == BUTTON_MAN_BURST){
        power_pump(action == (BUTTON_BURST) ? PUMP_OVERRIDE : PUMP_MASTER_OVERRIDE);
        bursting |= BURSTING;
    } else if(bursting & BURSTING){
        power_pump(PUMP_OFF);
        bursting &= ~BURSTING;
    }

    /* Changes modes DMX <-> MANUAL */
    if(action == BUTTON_MANUAL){
        set_runtime_data(OP_MODE_INDEX, VALUE, (get_runtime_data(OP_MODE_INDEX) == MODE_MANUAL) ? MODE_DMX : MODE_MANUAL);

        State = IDLE_STATE;
        Changed = CHANGE_SCREEN_X;

        set_playing(RESET);

        tick_fogger();

    }

    /* Starts Timer */
    if(action == BUTTON_TIMER_HOLD){
        if(get_playing() == PLAY){
            set_playing(RESET);
        } else {
            set_playing(PLAY);
        }

        tick_fogger();

        return;
    }

    /* Turns off tank lights #hiddenishfeature */
    if(action == BUTTON_FUN_MAN){
        set_runtime_data(TANK_LIGHTS_INDEX, VALUE, ~get_runtime_data(TANK_LIGHTS_INDEX));

        exe_command(CLEAR_DISPLAY);
        if(get_runtime_data(TANK_LIGHTS_INDEX)){
            write_string("Tank Lights Off", 15, 0, LINE_0, NOT_SELECTED);
        } else {
            write_string("Tank Lights On", 15, 0, LINE_0, NOT_SELECTED);
        }

        write_string("Fun+Man to Undo", 15, 0, LINE_1, NOT_SELECTED);
       
        delay = FIB_29;

        while(delay--){ ;; }

        Changed = CHANGE_SCREEN_X;

        return;
    }

    /* Turns off tank lights #hiddenishfeature */
    if(action == BUTTON_BURST_UP){
        
        exe_command(CLEAR_DISPLAY);
        if(get_heater_enabled()){
            write_string("Heater Off", 15, 2, LINE_0, NOT_SELECTED);
            power_heater(HEATER_DISABLE);
        } else {
            write_string("Heater On", 15, 2, LINE_0, NOT_SELECTED);
            power_heater(HEATER_ENABLE);
        }

        write_string("Burst+Up to Undo", 16, 0, LINE_1, NOT_SELECTED);
       
        delay = FIB_29;

        while(delay--){ ;; }

        Changed = CHANGE_SCREEN_X;

        return;
    }

    /* Man + Burst */
    if(action == BUTTON_FUN_BURST){

        ss = bursting & ~BURSTING;

        exe_command(CLEAR_DISPLAY);
        
        if(!ss){
            write_string(getString(SECRET_STRING_OFFSET + 6), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
            write_string(getString(SECRET_STRING_OFFSET + 7), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
            ss = 3;
        } else {
            write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2), LINE_LENGTH, 0, LINE_0, NOT_SELECTED);
            write_string(getString(SECRET_STRING_OFFSET + (ss % 3)*2 + 1), LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
            ss++;
        }

        bursting &= BURSTING;
        bursting |= (ss & ~BURSTING);

        delay = FIB_31;

        while(delay--){ ;; }

        Changed = CHANGE_SCREEN_X;

        return;
    }

    /* Takes you back to the idle menu - there is no timeout */
    if(action == BUTTON_FUN_TIME){
        State = IDLE_STATE;
        Changed = CHANGE_SCREEN_X;
    }


    /* FSM */
    if(Changed || 
        action == BUTTON_UP ||
        action == BUTTON_UP_HOLD||
        action == BUTTON_UP_BURST ||
        action == BUTTON_DOWN ||
        action == BUTTON_DOWN_HOLD ||
        action == BUTTON_DOWN_BURST ||
        action == BUTTON_TIMER ||
        action == BUTTON_FUNCTION ||
        State == IDLE_STATE){

        switch (State)
        {
            case WELCOME_STATE:

                /* Only Available while flashing ticks out */
                exe_command(CLEAR_DISPLAY);
                write_string("AtmosFEAR 221B", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
                write_string("By Blizzard Pro", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);

                Changed = CHANGE_SCREEN_X;
                State = IDLE_STATE;

            break;
            case MANUAL_FOG_POWER_STATE:
                fogLevelPage(action);
            break;
            case MANUAL_FOG_INTERVAL_STATE:
                fogIntervalPage(action);
            break;
            case MANUAL_FOG_DURATION_STATE:
                fogDurationPage(action);
            break;
            case MANUAL_COLOR_MACRO_STATE:
                macroPage(action);
            break;
            case MANUAL_MACRO_SPEED_STATE:
                macroSpeedPage(action);
            break;
            case MANUAL_RED_STATE:
            case MANUAL_GREEN_STATE:
            case MANUAL_BLUE_STATE:
            case MANUAL_STROBE_STATE:
                colorPage(action);
            break;
            case MANUAL_REMOTE_ACTION_4_STATE:
            case MANUAL_REMOTE_ACTION_5_STATE:
            case MANUAL_REMOTE_ACTION_6_STATE:
                remotePage(action);
            break;
            case MANUAL_LOAD_SETTINGS_STATE:
            case MANUAL_SAVE_SETTINGS_STATE:
                saveLoadPage(action);
            break;
            case DMX_ADDRESS_STATE:
                dmxAddressPage(action);
            break;
            case DMX_CHANNEL_MODE_STATE:
                dmxChannelPage(action);
            break;
            default: //IDLE state
                idlePage();

                if(action == BUTTON_FUNCTION){
                    set_ui_state(INC, NULL);
                } else if(action == BUTTON_TIMER){
                    set_ui_state(DEC, NULL);
                }
            break;
        }
    }

}

void idlePage(){
    static uint8_t timer = 0;
    static uint8_t intervalOrDuration;
    static uint8_t empty = 0x00;
    static uint8_t tock = 0x00;
    static uint8_t iconChange = 0x00;
    static uint8_t playing = PAUSE;
    uint8_t temp;

    if(empty){
        if(get_fog_fluid_level() == TANK_FULL){
            empty = 0x00;
            Changed = CHANGE_SCREEN_X;
        } else if(Changed){
            Changed = 0x00;
            exe_command(CLEAR_DISPLAY);
            write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
            write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
        }

        return;
    }

    /* PC Load Letter */
    if(get_fog_fluid_level() == TANK_EMPTY && get_heated() == HEATED){
        //TODO PC load letter
        write_string("PC Load Letter", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);
        write_string("Burst to Refill", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);

        empty = 0xFF;

        return;
    }

    if(Changed){
        exe_command(CLEAR_DISPLAY);
        Changed = 0x00;
        changed = 0xFF;
        timer = 0xFF;
        intervalOrDuration = 0x55; //guaranteed to not be interval or duration
        
        if(get_runtime_data(OP_MODE_INDEX)){ /* Manual Mode */
            write_string("Manual Mode", LINE_LENGTH, 1, LINE_0, NOT_SELECTED);

        } else { /* DMX Mode */
            write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);
            switch (get_runtime_data(MODE_INDEX))
            {
                case OPTION_DMX_MODE_3:
                    temp = 3;
                    break;
                case OPTION_DMX_MODE_1: 
                    temp = 1;
                    break;
                default:
                    temp = 11;
                    break;
            }
            write_number(temp, 12, LINE_1, NOT_SELECTED);

            write_string("Addr", sizeof("Addr") - 1, 0, LINE_1, NOT_SELECTED);
            write_string("Mode", sizeof("Mode") - 1, 9, LINE_1, NOT_SELECTED);
            
        }
    }

    /*
        Icon logic
    */
    tock++;
    if(get_playing() == PLAY){
        if(playing == PAUSE){
            iconChange |= PLAY_CHANGE;
        }

        if(get_interval_or_duration() == INTERVAL){

            if(iconChange & PLAY_CHANGE){
                write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
                iconChange &= ~PLAY_CHANGE;
            }

        } else {
            if(tock == 0x80 + 55){ //blink if fogging
                write_char(CHAR_PLAY, PLAY_ICON_INDEX, LINE_0);
            } else if(tock == 0x08 + 55){
                write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
            }
        }
        iconChange |= PAUSE_CHANGE;
    } else {
        if(playing == PLAY){
            iconChange |= PAUSE_CHANGE;
        }

        if(iconChange & PAUSE_CHANGE){
            write_char(CHAR_NULL, PLAY_ICON_INDEX, LINE_0);
            iconChange |= PLAY_CHANGE;
            iconChange &= ~PAUSE_CHANGE;
        }

        playing = PAUSE;
    }

    if(get_heater_enabled()){
        if(get_heated()){
            if(iconChange & HEATED_CHANGE){
                write_char(CHAR_HEATED, HEAT_ICON_INDEX, LINE_0);
                iconChange &= ~HEATED_CHANGE;
            }
        } else { //Blinking on Heated
            if(!(tock)){
                if(iconChange & HEATING_CHANGE){
                    write_char(CHAR_NULL, HEAT_ICON_INDEX, LINE_0);
                    iconChange &= ~HEATING_CHANGE;
                } else {
                    write_char(CHAR_HEATING, HEAT_ICON_INDEX, LINE_0);
                    iconChange |= HEATING_CHANGE;
                }
            }
            iconChange |= HEATED_CHANGE;
        }
        iconChange |= HEATER_CHANGE;
    } else {
        if(iconChange & HEATER_CHANGE){
            write_char(CHAR_HEATER_OFF, HEAT_ICON_INDEX, LINE_0);
            iconChange &= ~HEATER_CHANGE;
        }
        iconChange |= HEATER_CHANGE | HEATED_CHANGE;
    }
    

    /* Line 2 Logic */
    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){

        /* Write DMX Ok */
        if(has_dmx()){
            if(changed & DMX_OK_CHANGE){
                write_string("DMX Ok", sizeof("DMX Ok") - 1, 1, LINE_0, NOT_SELECTED);
                changed |= NO_DMX_CHANGE;
                changed &= ~DMX_OK_CHANGE;
            }
        } else {
            if(changed & NO_DMX_CHANGE){
                write_string("No DMX", sizeof("No DMX") - 1, 1, LINE_0, NOT_SELECTED);
                changed |= DMX_OK_CHANGE;
                changed &= ~NO_DMX_CHANGE;
            }
        }

        temp = get_timer();

        /* Write Timer */
        if(timer != temp){

            write_number(temp, 7, LINE_0, NOT_SELECTED);
            write_char((get_interval_or_duration() == INTERVAL) ? CHAR_I : CHAR_D, 11, LINE_0);

            timer = temp;
        } 

    } else {

        temp = get_interval_or_duration();

        if(intervalOrDuration != temp){
            if(temp == INTERVAL){
                write_string("Interval", sizeof("Interval"), 0, LINE_1, NOT_SELECTED);
            } else {
                write_string("Duration", sizeof("Duration"), 0, LINE_1, NOT_SELECTED);
            }

            intervalOrDuration = temp;
        }

        temp = get_timer();

        if(timer != temp){

            write_number(temp, NUMBER_END_INDEX-1, LINE_1, NOT_SELECTED);

            timer = temp;
        }

    }
}

void fogLevelPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP:
            set_runtime_data(FOG_POWER_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN:
            set_runtime_data(FOG_POWER_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Fog Level", sizeof("Fog Level"), 3, LINE_0, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        switch (get_runtime_data(FOG_POWER_INDEX))
        {
            case OPTION_FOG_LOW:
                write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_LOW), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
                write_char(CHAR_LVL_1, 12, LINE_1);
                break;
            case OPTION_FOG_MEDIUM:
                write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_MEDIUM), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
                write_char(CHAR_LVL_1, 12, LINE_1);
                write_char(CHAR_LVL_2, 13, LINE_1);
                break;
            case OPTION_FOG_HIGH:
                write_string(getString(POWER_STRING_OFFSET + OPTION_FOG_HIGH), LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
                write_char(CHAR_LVL_1, 12, LINE_1);
                write_char(CHAR_LVL_2, 13, LINE_1);
                write_char(CHAR_LVL_3, 14, LINE_1);
                break;
        }

    }
}

void fogIntervalPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_runtime_data(FOG_INTERVAL_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_runtime_data(FOG_INTERVAL_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Fog Interval", sizeof("Fog Interval"), 2, LINE_0, NOT_SELECTED);
        write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        write_number(get_runtime_data(FOG_INTERVAL_INDEX), 1, LINE_1, NOT_SELECTED);

    }


}

void fogDurationPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_runtime_data(FOG_DURATION_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_runtime_data(FOG_DURATION_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Fog Duration", sizeof("Fog Duration"), 2, LINE_0, NOT_SELECTED);
        write_string("Seconds", sizeof("Seconds"), 7, LINE_1, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        write_number(get_runtime_data(FOG_DURATION_INDEX), 1, LINE_1, NOT_SELECTED);

    }
}

void macroPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_runtime_data(MACRO_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_runtime_data(MACRO_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Macros", sizeof("Macros"), 4, LINE_0, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        write_string(getString(get_runtime_data(MACRO_INDEX) + MACRO_STRING_OFFSET), LINE_LENGTH, 6, LINE_1, NOT_SELECTED);

    }
}

void macroSpeedPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_runtime_data(MACRO_SPEED_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_runtime_data(MACRO_SPEED_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Macro Speed", sizeof("Macro Speed"), 3, LINE_0, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        if(get_runtime_data(MACRO_SPEED_INDEX) == 0){
            write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
        } else {
            write_string("", LINE_LENGTH, 3, LINE_1, NOT_SELECTED);
            write_number(get_runtime_data(MACRO_SPEED_INDEX), 5, LINE_1, NOT_SELECTED);
        }
    }

}

void colorPage(uint8_t action){
    uint8_t index = 0;

    switch (State)
    {
        case MANUAL_RED_STATE:
            index = RED_INDEX;
            break;
        case MANUAL_GREEN_STATE:
            index = GREEN_INDEX;
            break;
        case MANUAL_BLUE_STATE:
            index = BLUE_INDEX;
            break;
        case MANUAL_STROBE_STATE:
            index = STROBE_INDEX;
            break;
    }

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_runtime_data(index, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_runtime_data(index, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string(getString(COLOR_STRING_OFFSET + State), LINE_LENGTH, 3, LINE_0, NOT_SELECTED);

    }

    if(changed){
        changed = 0x00;

        if(get_runtime_data(index) == 0){
            write_string("Off", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
        } else {
            write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED);
            write_number(get_runtime_data(index), 6, LINE_1, NOT_SELECTED);
        }
    }
}

void remotePage(uint8_t action){
    uint8_t remoteNumber = 0;
    uint8_t index = 0;
    
    switch (State)
    {
        case MANUAL_REMOTE_ACTION_4_STATE:
            index = R4_INDEX;
            remoteNumber = 4;
            break;
        case MANUAL_REMOTE_ACTION_5_STATE:
            index = R5_INDEX;
            remoteNumber = 5;
            break;
        case MANUAL_REMOTE_ACTION_6_STATE:
            index = R6_INDEX;
            remoteNumber = 6;
            break;
    }

    switch (action)
    {
        case BUTTON_UP:
            set_runtime_data(index, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN:
            set_runtime_data(index, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("Remote X Action", sizeof("Remote X Action"), 1, LINE_0, NOT_SELECTED);
        switch (remoteNumber)
        {
            case 4:
                write_char(CHAR_4, 8, LINE_0);
            break;
            case 5:
                write_char(CHAR_5, 8, LINE_0);
            break;
            case 6:
                write_char(CHAR_6, 8, LINE_0);
            break;
        }
    }

    if(changed){
        changed = 0x00;
        write_string(getString(get_runtime_data(index) + WIRELESS_ACTION_STRING_OFFSET), LINE_LENGTH, 2, LINE_1, NOT_SELECTED);  
    }
}

void saveLoadPage(uint8_t action){
    static uint8_t slot = 0;

    switch (action)
    {
        case BUTTON_UP_HOLD:
            save_load_settings(slot % (SLOT_COUNT - 1), (State == MANUAL_SAVE_SETTINGS_STATE) ? SAVE : LOAD);
            write_string("", LINE_LENGTH, 0, LINE_1, NOT_SELECTED); 

            if(State == MANUAL_SAVE_SETTINGS_STATE){
                write_string("Saved!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
            } else {
                write_string("Loaded!", LINE_LENGTH, 6, LINE_1, NOT_SELECTED);
            }
        break;
        case BUTTON_UP:
            slot++;
            changed = 0xFF;
        break;
        case BUTTON_DOWN:
            slot--;
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        if(State == MANUAL_SAVE_SETTINGS_STATE){
            write_string("Save Settings", sizeof("Save Settings"), 2, LINE_0, NOT_SELECTED);
        } else {
            write_string("Load Settings", sizeof("Load Settings"), 2, LINE_0, NOT_SELECTED);
        }

    }

    if(changed){
        changed = 0x00;
        write_string(getString((slot % (SLOT_COUNT - 1)) + SAVE_LOAD_STRING_OFFSET), LINE_LENGTH, 4, LINE_1, NOT_SELECTED);  
    }

}

void dmxAddressPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP_BURST:
        case BUTTON_UP:
            set_dmx_address(INC);
            changed = 0xFF;
        break;
        case BUTTON_DOWN_BURST:
        case BUTTON_DOWN:
            set_dmx_address(DEC);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("DMX Address", sizeof("DMX Address"), 2, LINE_0, NOT_SELECTED);
    }

    if(changed){
        changed = 0x00;

        write_number(get_dmx_address(), 4, LINE_1, NOT_SELECTED);

    }
}

void dmxChannelPage(uint8_t action){

    switch (action)
    {
        case BUTTON_UP:
            set_runtime_data(MODE_INDEX, INC, NULL);
            changed = 0xFF;
        break;
        case BUTTON_DOWN:
            set_runtime_data(MODE_INDEX, DEC, NULL);
            changed = 0xFF;  
        break;
        case BUTTON_FUNCTION:
            set_ui_state(INC, NULL);
        return;
        case BUTTON_TIMER:
            set_ui_state(DEC, NULL);
        return;
    }

    if(Changed){
        Changed = 0x00;
        changed = 0xFF;

        exe_command(CLEAR_DISPLAY);

        write_string("DMX Channel Mode", sizeof("DMX Channel Mode"), 0, LINE_0, NOT_SELECTED);
    }

    if(changed){
        changed = 0x00;

        write_string(getString(get_runtime_data(MODE_INDEX) + DMX_STRING_OFFSET), LINE_LENGTH, 1, LINE_1, NOT_SELECTED);

    }
}

void set_ui_state(uint8_t inc, uint8_t state){
    Changed = CHANGE_SCREEN_X;

    switch (inc)
    {
    case DEC:
        state = State;
        if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
            if(state == IDLE_STATE){
                state = DMX_STATE_LOW;
            } else if(++state > DMX_STATE_HIGH){
                state = IDLE_STATE;
            }
        } else { //mode manual
            if(state == IDLE_STATE){
                state = IDLE_STATE + 1; 
            } else if(++state > MANUAL_STATE_HIGH){
                state = IDLE_STATE;
            }
        }
        break;
    case INC:
        state = State;
        if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
            if(state == IDLE_STATE){
                state = DMX_STATE_HIGH;
            } else if(--state < DMX_STATE_LOW){
                state = IDLE_STATE;
            }
        } else {
            if(state == IDLE_STATE){
                state = MANUAL_STATE_HIGH; 
            } else {
                state--;
            }
        }
        break;
    default: 
        if(state <= MANUAL_STATE_HIGH || (state >= DMX_STATE_LOW && state <= DMX_STATE_HIGH)){
            state = IDLE_STATE;
        }
        break;
    }

    State = state;
}

uint8_t get_ui_state(){
    return State;
}

char* getString(uint8_t index){
    switch (index)
    {
        case POWER_STRING_OFFSET + OPTION_FOG_LOW:
            return "Wimpy";
        case POWER_STRING_OFFSET + OPTION_FOG_MEDIUM:
            return "Mild";
        case POWER_STRING_OFFSET + OPTION_FOG_HIGH:
            return "Blazin";

        case MACRO_STRING_OFFSET + OPTION_MACRO_NONE:
            return "Off";
        case MACRO_STRING_OFFSET + OPTION_MACRO_RAINBOW_DMX:
            return "Rainbow";
        case MACRO_STRING_OFFSET + OPTION_MACRO_FIRE_DMX:
            return "Fire";
        case MACRO_STRING_OFFSET + OPTION_MACRO_WATER_DMX:
            return "Water";
        case MACRO_STRING_OFFSET + OPTION_MACRO_STORM_DMX:
            return "Storm";
        case MACRO_STRING_OFFSET + OPTION_MACRO_ACID_DMX:
            return "Acid";
        case MACRO_STRING_OFFSET + OPTION_MACRO_ETHER_DMX:
            return "Ether";

        case COLOR_STRING_OFFSET + MANUAL_RED_STATE:
            return "Red Level";
        case COLOR_STRING_OFFSET + MANUAL_GREEN_STATE:
            return "Green Level";
        case COLOR_STRING_OFFSET + MANUAL_BLUE_STATE:
            return "Blue Level";
        case COLOR_STRING_OFFSET + MANUAL_STROBE_STATE:
            return "Strobe Level";

        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACITON_NONE:
            return "No Action";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
            return "Choose Macro";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_RED:
            return "Red";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_YELLOW:
            return "Yellow";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_GREEN:
            return "Green";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_CYAN:
            return "Cyan";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLUE:
            return "Blue";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_MAGENTA:
            return "Magenta";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_SLOW:
            return "Strobe Slow";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
            return "Strobe Medium";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_STROBE_FAST:
            return "Strobe Fast";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_BLACKOUT:
            return "Blackout";
        case WIRELESS_ACTION_STRING_OFFSET + OPTION_WIRELESS_ACTION_WHITEOUT:
            return "Whiteout";         
 
        case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_1: 
            return "Slot 1";   
        case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_2: 
            return "Slot 2";   
        case SAVE_LOAD_STRING_OFFSET + OPTION_SLOT_3: 
            return "Slot 3"; 

        case DMX_STRING_OFFSET + OPTION_DMX_MODE_11: 
            return "11 All";     
        case DMX_STRING_OFFSET + OPTION_DMX_MODE_3: 
            return " 3 Fog + Macro";   
        case DMX_STRING_OFFSET + OPTION_DMX_MODE_1: 
            return " 1 Fog";    

        case SECRET_STRING_OFFSET + 0:
            return "0x486F6C6D6573";
        case SECRET_STRING_OFFSET + 1:
            return "& 576174736F6E";
        case SECRET_STRING_OFFSET + 2:
            return "626F74684F776E41";
        case SECRET_STRING_OFFSET + 3:
            return "536E6F7762616C6C";
        case SECRET_STRING_OFFSET + 4:
            return "4D6F726961727479";
        case SECRET_STRING_OFFSET + 5:
            return "646F65734E6F74 ;";
        case SECRET_STRING_OFFSET + 6:
            return "FirmwareCrafter:";
        case SECRET_STRING_OFFSET + 7:
            return "ChristianKrueger";
    }

    return 0;
}