/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Wireless Manager -> wireless.h
 *
 */

#include "wireless.h"


/* clk/4 * (0xFFFF - COUNT_HI:COUNT:LO) = ~0.5ms*/
#define COUNTER_HI 0x84
#define COUNTER_LO 0x5F
/*0x08C0 - old value ~1ms*/

/* This man consecutive 0s constitute as a break */
#define BREAK_COUNT 15
/*9 - old value ~1ms*/

/* Spin wait timeout */
#define DIT_DAH_TIMEOUT 3000
/*610 - old value ~1ms*/

/* Min spin detect until considered a Dah*/
#define DAH_COUNT 233

static volatile uint8_t Break_Count = 0;
static volatile uint8_t Current_Action = WIRELESS_ACTION_NA;

/* We are looking for several consecutive 0's 
    if we get them, we check for a wireless packet
    the packet has a certain preamble then
    buttons 1-6 have a slightly diffrent end of
    the packet */
void wirelessBreakDetectISR() __interrupt (1){

    
    if(!P3_7){
        if(Break_Count++ > BREAK_COUNT){

            Current_Action = getWirelessAction();

            Break_Count = 0;
        }
    } else {
        Break_Count = 0;
    }

    //reload
    TH0 = COUNTER_HI;
    TL0 = COUNTER_LO;

}

void tick_wireless(){
    static uint8_t lastAction = WIRELESS_ACTION_NA;
    
    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
        /* Wireless detect timer off */
        TCON &= ~TIMER_ON; 
        return;
    }

    /* Wireless detect timer on */
    TCON |= TIMER_ON; 

    switch (Current_Action)
    {
        case WIRELESS_ACTION_PLAY: //continual
            set_playing(PLAY);
        break;
        case WIRELESS_ACTION_PAUSE: //continual
            set_playing(PAUSE);
        break;
        case WIRELESS_ACTION_BURST: //continual
            power_pump(PUMP_OVERRIDE);
        break;
        case WIRELESS_ACTION_USER_CONFIG_1: //press
            if(lastAction == WIRELESS_ACTION_NA){
                handleUserConfigAction(get_runtime_data(R4_INDEX));
            }
        break;
        case WIRELESS_ACTION_USER_CONFIG_2: //press
            if(lastAction == WIRELESS_ACTION_NA){
                handleUserConfigAction(get_runtime_data(R5_INDEX));
            }
        break;
        case WIRELESS_ACTION_USER_CONFIG_3: //press
            if(lastAction == WIRELESS_ACTION_NA){
                handleUserConfigAction(get_runtime_data(R6_INDEX));
            }
        break;
    }

    if(lastAction == WIRELESS_ACTION_BURST && Current_Action != WIRELESS_ACTION_BURST){
        power_pump(PUMP_OFF);
    }

    lastAction = Current_Action;

}

void handleUserConfigAction(uint8_t action){
    static uint16_t changed = 0;    
    uint16_t changedBit;
    uint8_t off = 0x00;
    uint8_t red = 0, green = 0, blue = 0;

    /* Do nothing if no action*/
    if(!action){ return; }

    /* Track Changes*/
    changedBit = 1 << (action-1);

    if(changed & changedBit){
        off = 0xFF;
        changed &= ~changedBit;
    } else {
        changed |= changedBit;
    }

    /* Do action */
    switch (action)
    {
        case OPTION_WIRELESS_ACTION_CHOOSE_MACRO:
            set_runtime_data(MACRO_INDEX, INC, NULL);
            return;
        case OPTION_WIRELESS_ACTION_RED:
            red = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_YELLOW:
            red = WIRELESS_VALUE_FULL;
            green = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_GREEN:
            green = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_CYAN:
            green = WIRELESS_VALUE_FULL;
            blue = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_BLUE:
            blue = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_MAGENTA:
            blue = WIRELESS_VALUE_FULL;
            red = WIRELESS_VALUE_FULL;
            break;
        case OPTION_WIRELESS_ACTION_STROBE_SLOW:
            set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_SLOW);
            return;
        case OPTION_WIRELESS_ACTION_STROBE_MEDIUM:
            set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_MEDIUM);
            return;
        case OPTION_WIRELESS_ACTION_STROBE_FAST:
            set_runtime_data(STROBE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : WIRELESS_VALUE_STROBE_FAST);
            return;
        case OPTION_WIRELESS_ACTION_BLACKOUT:
            off = 0xFF;
            break;
        case OPTION_WIRELESS_ACTION_WHITEOUT:
            red = WIRELESS_VALUE_FULL;
            green = WIRELESS_VALUE_FULL;
            blue = WIRELESS_VALUE_FULL;
            break;
        default:
            return;
    }

    set_runtime_data(MACRO_INDEX, VALUE, WIRELESS_VALUE_0);
    set_runtime_data(RED_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : red);
    set_runtime_data(GREEN_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : green);
    set_runtime_data(BLUE_INDEX, VALUE, (off) ? WIRELESS_VALUE_0 : blue);
    
}

uint8_t getWirelessAction(){
    uint16_t preamble = PREAMBLE;
    uint8_t count = DAH_DIT_BITS;
    uint8_t i, dit_dah;

    //detect preamble
    for(i = 0; i < PREAMBLE_BITS; i++){
        dit_dah = detectDitDah();

        if(dit_dah == BAD_WIRELESS){
            return dit_dah;
        }

        if(preamble & (0x0001 << i)){ //expects a Dit
            if(dit_dah != DIT){
                return BAD_WIRELESS;
            }
        } else { //expects a Dah
            if(dit_dah != DAH){
                return BAD_WIRELESS;
            }
        }
    }

    //counts down until one dah
    while(count--){
        dit_dah = detectDitDah();

        if(!dit_dah){
            return BAD_WIRELESS;
        } else if(dit_dah == DAH){
            break;
        }
    }

    /* It works out really nicely that the amount of dits before a dah
    correlate to which button is pressed :) */
    return count >> 1;
}

uint8_t detectDitDah(){
    uint16_t count = 0;
    uint16_t timeout = DIT_DAH_TIMEOUT;

    //look for a one
    while(timeout--){
        if(P3_7){
            break;
        }
    }

    /* if time ran out return */
    if(!timeout){
        return BAD_WIRELESS;
    }   

    /* reset timer */
    timeout = DIT_DAH_TIMEOUT;
    
    /* looks for a 0*/
    while(timeout--){
        if(P3_7){
            count++;
        } else {
            break;
        }
    }

    /* if time ran out return */
    if(!timeout){
        return BAD_WIRELESS;
    }


    /* if the count of ones exceeds the minimum DAH_COUNT
    reutrn a Dah else Dit*/
    return (count > DAH_COUNT) ? DAH : DIT;
}