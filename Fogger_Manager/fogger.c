/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Fogger Manager -> fogger.c
 *
 */

#include "fogger.h"

uint8_t Timer;
uint8_t Interval_Or_Duration;
uint8_t Playing = PAUSE;
uint8_t Heat_Flag = COLD_FLAG;
uint8_t Fluid_Level = TANK_FULL;

void tick_fogger(){
    //heater and leds
    static uint8_t fullCount = 0;
    static uint8_t on = 0x00; //to toggle lights
    uint16_t temperature;

    //timer and pump
    static uint8_t duration;
    static uint8_t interval;
    static uint8_t power;
    static uint8_t tock = 0;
    uint8_t value = 0;

    /* Heater, Fluid and Light Section*/

    /* Heating Feedback Loop */
    temperature = get_adc_value(ADC_TEMPERATURE);

    if(temperature < HEAT_LOW){ /* Turn on heater full blast */
        Heat_Flag &= ~HEATED;
        Heat_Flag &= ~HOT_FLAG;
    } else if(temperature > HEAT_HIGH){ /* Turn off Heater */
        Heat_Flag |= HOT_FLAG;
        Heat_Flag |= HEATED;
    } else if(temperature > HEAT_OK){ /* Set Heated */
        Heat_Flag |= HEATED;
    }

    /* 0 = on 1 = off*/
    if(Heat_Flag & HEAT_DISABLE_FLAG){
        P3_4 = 1;
        P3_3 = 1;
    } else {
        P3_4 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
        P3_3 = (Heat_Flag & HOT_FLAG) ? 1 : 0;
    }

    /* Fluid Feedback */
    if(!P2_6){ // no fluid
        if(Fluid_Level == TANK_FULL){
            if(fullCount++ > REFILL_FLUID_COUNT){
                Fluid_Level = TANK_EMPTY;
            }
        } else {
            fullCount = 0;
        }
    } else { //fluid
        if(Fluid_Level == TANK_EMPTY){
            if(fullCount++ > REFILL_FLUID_COUNT){
                Fluid_Level = TANK_FULL;
            }
        } else {
            fullCount = 0;
        }
    }

    /* LED Feedback */
    if(!get_runtime_data(TANK_LIGHTS_INDEX)){
        if(Fluid_Level == TANK_EMPTY){ //flash on empty
            on = ~on;

            if(on){
                P1_0 = 0;
                P2_0 = 1;
            } else {
                P1_0 = 1;
                P2_0 = 1;
            }
        } else {
            if(get_heated()){ //heated not heated
                P1_0 = 0;
                P2_0 = 1;
            } else {
                P1_0 = 1;
                P2_0 = 0;
            }
        }
    } else { //lights off
        P1_0 = 1;
        P2_0 = 1;
    }

    /* Timer and Pump Section*/
    //check for changes
    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
        if(has_dmx()){
            Playing = PLAY;
            power = FOG_HIGH;
            power_heater(HEATER_ENABLE);

            if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11)
            {
                value = get_dmx_value(DMX_M11_POWER_INDEX);

                if(value < DMX_FOG_OFF){
                    Playing = PAUSE;
                } else if(value < DMX_FOG_LOW){
                    value = FOG_LO;
                } else if(value < DMX_FOG_MEDIUM){
                    value = FOG_MED;
                } else {
                    value = FOG_HIGH;
                }

                if(value != power){
                    power = value;
                } 

                value = get_dmx_value(DMX_M11_DURATION_INDEX);

                if(value != duration){
                    duration = value;
                    Timer = duration;
                    Interval_Or_Duration = DURATION;
                }

                value = get_dmx_value(DMX_M11_INTERVAL_INDEX);

                if(value != interval){
                    interval = value;
                    Playing = RESET;
                }

                value = get_dmx_value(DMX_M11_HEATER_ENABLE_INDEX);

                if(value >= DMX_HEATER_OFF){
                    power_heater(HEATER_DISABLE);
                }

            //end mode 1
            } else {
            //start mode 1 + 3

                value = get_dmx_value(DMX_M1_FOG_INDEX);


                if(value < DMX_FOG_OFF){
                    Playing = PAUSE;

                } else if(value < DMX_FOG_3_13){
                    if(duration != 3 || interval != 13){
                        duration = 3;
                        interval = 13;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_3_21){
                    if(duration != 3 || interval != 21){
                        duration = 3;
                        interval = 21;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_3_34){
                    if(duration != 3 || interval != 34){
                        duration = 3;
                        interval = 34;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_3_55){
                    if(duration != 3 || interval != 55){
                        duration = 3;
                        interval = 55;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_8_21){
                    if(duration != 8 || interval != 21){
                        duration = 8;
                        interval = 21;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_8_34){
                    if(duration != 8 || interval != 34){
                        duration = 8;
                        interval = 34;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_8_55){
                    if(duration != 8 || interval != 55){
                        duration = 8;
                        interval = 55;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_8_89){
                    if(duration != 8 || interval != 89){
                        duration = 8;
                        interval = 89;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_8_144){
                    if(duration != 8 || interval != 144){
                        duration = 8;
                        interval = 144;
                        Playing = RESET;
                    } 
                } else if(value < DMX_FOG_21_55){
                    if(duration != 21 || interval != 55){
                        duration = 21;
                        interval = 55;
                        Playing = RESET;
                    } 
                } else { //constant on
                    if(duration !=  0 || interval != 0){
                        duration = 0;
                        interval = 0;
                        Playing = RESET;
                    }    
                }

            } //end Mode 3 + 1
        } else {
            Playing = RESET;
        }
    } else { //Manual Mode
        value = get_runtime_data(FOG_POWER_INDEX);

        /* This is important - it can be shifted 0, 1, or 2 bits*/
        /* which gets us to the 3 diffrent fog levels*/
        value = 0x01 << value;

        if(value != power){
            power = value;
            Playing = RESET;
        } 

        value = get_runtime_data(FOG_DURATION_INDEX);

        if(value != duration){
            duration = value;
            Playing = RESET;
        }

        value = get_runtime_data(FOG_INTERVAL_INDEX);

        if(value != interval){
            interval = value;
            Playing = RESET;
        }
    }

    /* Reset the fucker */
    if(Playing == RESET){
        Playing = PAUSE;
        Timer = interval;
        Interval_Or_Duration = INTERVAL;
    }

    /* Tick Timer and Pump */
    if(Playing){
        tock++;

        if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX
            && (!duration || !interval)){

            if(!(tock % power)){
                power_pump(PUMP_ON);
            } else {
                power_pump(PUMP_OFF);
            }
        } else {

            if(!(tock % 8)){
                Timer--;
            }

            if(Timer == 0x00){
                power_pump((Interval_Or_Duration == INTERVAL) ? PUMP_ON : PUMP_OFF);
                Timer = (Interval_Or_Duration == INTERVAL) ? duration : interval;
                Interval_Or_Duration = (Interval_Or_Duration == INTERVAL) ? DURATION : INTERVAL;
            } else {
                if(Interval_Or_Duration == INTERVAL){
                    power_pump(PUMP_OFF);
                } else {
                    if(!(tock % power)){
                        power_pump(PUMP_ON);
                    } else {
                        power_pump(PUMP_OFF);
                    }
                }
            }

        }

    } else { //not playing
        power_pump(PUMP_OFF);
    }

}

void power_pump(uint8_t action){
    switch (action)
    {
        case PUMP_ON:
            if(get_fog_fluid_level() != TANK_EMPTY && get_heated() == HEATED){
                P2_5 = 0;
                Heat_Flag &= ~HOT_FLAG;
            } else {
                P2_5 = 1;
            }
            break;
        case PUMP_OVERRIDE:
            if(get_heated() == HEATED){
                P2_5 = 0;
                Heat_Flag &= ~HOT_FLAG;
            } else {
                P2_5 = 1;
            }
            break;
        case PUMP_MASTER_OVERRIDE:
            P2_5 = 0;
            break;
        default:
            P2_5 = 1;
            break;
    }
}

void power_heater(uint8_t action){
    switch (action)
    {
        case HEATER_DISABLE:
            Heat_Flag |= HEAT_DISABLE_FLAG;
            break;
        default:
            Heat_Flag &= ~HEAT_DISABLE_FLAG;
            break;
    }
}