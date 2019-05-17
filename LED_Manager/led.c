/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * LED Manager -> led.c
 *
 */

#include "led.h"

/*

    PWMDATA11H = RED
    PWMDATA17H = GREEN
    PWMDATA14H = BLUE

*/

/* All the lighting magic happens here baby! */
void tick_led(uint32_t tick){
    static uint8_t on = 0;
    uint8_t value;
    uint8_t strobe;

    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
        switch(get_runtime_data(MODE_INDEX)){
            case OPTION_DMX_MODE_9:
                value = get_dmx_value(DMX_M9_MACRO_INDEX);

                if(value >= DMX_MACRO_NONE){
                    if(value < DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
                        color_wheel((value - DMX_MACRO_NONE) << 1);
                    } else { /* Other Macros */
                        play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M9_MACRO_SPEED_INDEX));
                    }
                } else { /* No macro being played */

                    strobe = get_dmx_value(DMX_M9_STROBE_INDEX);

                    if(strobe){
                        if(!(tick % (STROBE_FREQ - (strobe << 1)))){
                            on = ~on;
                        }
                    } else {
                        on = 0xFF;
                    }

                    if(on){
                        PWMDATA11H = get_dmx_value(DMX_M9_RED_INDEX);
                        PWMDATA17H = get_dmx_value(DMX_M9_GREEN_INDEX);
                        PWMDATA14H = get_dmx_value(DMX_M9_BLUE_INDEX);
                    } else {
                        blackout();
                    }

                }
            break;
            case OPTION_DMX_MODE_3: /* Only macros */
                value = get_dmx_value(DMX_M3_MACRO_INDEX);
                if(value >= DMX_MACRO_NONE){
                    if(value < DMX_MACRO_COLOR_WHEEL){
                        color_wheel((value - DMX_MACRO_NONE) << 1);
                    } else {
                        play_macro(tick, dmx_to_macro(value), get_dmx_value(DMX_M3_MACRO_SPEED_INDEX));
                    }
                } else {
                    blackout();
                }
            break;
            default:
                blackout();
            break;
        }
    } else { /* Manual Mode */
        if(get_runtime_data(MACRO_INDEX) != OPTION_MACRO_NONE){
            play_macro(tick, get_runtime_data(MACRO_INDEX), get_runtime_data(MACRO_SPEED_INDEX));
        } else {

            strobe = get_runtime_data(STROBE_INDEX);

            if(strobe){
                if(!(tick % (STROBE_FREQ - (strobe << 1)))){
                    on = ~on;
                }
            } else {
                on = 0xFF;
            }

            if(on){
                PWMDATA11H = get_runtime_data(RED_INDEX);
                PWMDATA17H = get_runtime_data(GREEN_INDEX);
                PWMDATA14H = get_runtime_data(BLUE_INDEX);
            } else {
                blackout();
            }
        }
    }
}

uint8_t dmx_to_macro(uint8_t dmx_value){

    if(dmx_value < DMX_MACRO_WHITE){
        return OPTION_MACRO_WHITE;
    } else if(dmx_value < DMX_MACRO_RAINBOW){
        return OPTION_MACRO_RAINBOW_DMX;
    } else if(dmx_value < DMX_MACRO_FIRE){
        return OPTION_MACRO_FIRE_DMX;
    } else if(dmx_value < DMX_MACRO_WATER){
        return OPTION_MACRO_WATER_DMX;
    } else if(dmx_value < DMX_MACRO_ACID){
        return OPTION_MACRO_ACID_DMX;
    } else if(dmx_value < DMX_MACRO_ETHER){
        return OPTION_MACRO_ETHER_DMX;
    } else if(dmx_value < DMX_MACRO_STORM){
        return OPTION_MACRO_STORM_DMX;
    }

    return 69; // ;)
}

void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed){
    static uint8_t tock = 0;
    static uint8_t primaryCount = 0;
    static uint8_t secondaryCount = 0;
    static uint8_t direction = 0;
    uint32_t rng = 0;
    uint8_t changed = 0;
    


    if(!(tick % (MACRO_FREQ - (macro_speed >> 1)))){
        changed = 0xFF;
        rng = rngU32(); /* TODO check back */
        tock++;
    }

    switch (macro)
    {
        case OPTION_MACRO_RAINBOW_DMX: //rainbow
            color_wheel(tock);
            break;
        case OPTION_MACRO_FIRE_DMX: //fire
            if(changed) { 

                if(primaryCount < 55){ primaryCount = 55; direction |= 0x01;}
                if(direction & 0x01){
                    if(primaryCount == 255){
                        direction &= ~0x01;
                    } else {
                        primaryCount++;
                    }
                } else {
                   if(primaryCount - 1 == 55){
                        direction |= 0x01;
                    } else {
                        primaryCount--;
                    }
                }

                PWMDATA11H = primaryCount;
                PWMDATA17H = (uint8_t) (rng % (primaryCount >> 2));
                PWMDATA14H = (!(rng % 13)) ? PWMDATA17H > 1 : 0;

            }
            break;
        case OPTION_MACRO_WATER_DMX: //water
        case OPTION_MACRO_ACID_DMX:
        case OPTION_MACRO_ETHER_DMX:

            if(changed){

                if(direction & 0x01){
                    primaryCount +=2;

                    if(primaryCount < 75){
                        direction &= ~0x01;
                        primaryCount = 255;
                    }

                } else {
                    primaryCount -=2;

                    if(primaryCount <= 130){
                        direction |= 0x01;
                        primaryCount = 130;
                    }
                }

                if(rng % 21 == 0){
                    if(direction & 0x10){
                        direction &= ~0x10;
                    } else {
                        direction |= 0x10;
                    }
                } else {
                    if(direction & 0x10){
                        secondaryCount++;

                        if(secondaryCount >= 34){
                            secondaryCount = 34;
                        }

                    } else {
                        secondaryCount--;

                        if(secondaryCount > 36){
                            secondaryCount = 0;
                        }
                    }
                }

                if(macro == OPTION_MACRO_WATER_DMX){ //water
                    PWMDATA11H = secondaryCount;
                    PWMDATA17H = secondaryCount;
                    PWMDATA14H = primaryCount;
                } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
                    PWMDATA11H = secondaryCount;
                    PWMDATA17H = primaryCount;
                    PWMDATA14H = 0;
                } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
                    PWMDATA11H = primaryCount;
                    PWMDATA17H = secondaryCount;
                    PWMDATA14H = primaryCount;
                }

            }
            break;
        case OPTION_MACRO_STORM_DMX: //storm
            if(changed){
                if(!(rng % STORM_FREQ)){
                    primaryCount = 255;
                } else{
                    if(primaryCount > 200){
                        primaryCount--;
                    } else if(primaryCount > 130){
                        primaryCount-=2;
                    } else {
                        primaryCount-=3;
                        if(primaryCount > 200){
                            primaryCount = 0;
                        }
                    }
                }

                PWMDATA11H = primaryCount;
                PWMDATA17H = primaryCount;
                PWMDATA14H = primaryCount;
            }
            break;
        case OPTION_MACRO_WHITE: //w
            whiteout();
            break;
        case 69:
            if(tock < 32){
                rng = SH_0;
                if(rng & (SH_B >> tock)){
                    PWMDATA11H = 0; //Aqua - Adam
                    PWMDATA17H = 255;
                    PWMDATA14H = 255;
                } else {
                    blackout();
                }   
            } else if(tock < 64){
                rng = SH_1;
                if(rng & (SH_B >> (tock - 32))){
                    whiteout(); //White - Worth
                } else {
                    blackout();
                }  
            } else if(tock < 83){
                rng = SH_2;
                if(rng & (SH_B >> (tock - 64))){
                    whiteout();
                } else {
                    blackout();
                }  
            } else {
                tock = 0;
            }
            break;
        default:
            blackout();
    }
    
}

void color_wheel(uint8_t color){

    if(color < 85){
        PWMDATA11H = color * 3;
        PWMDATA17H = 255 - color * 3;
        PWMDATA14H = 0; 
    } else if(color < 170){
        color -= 85;
        PWMDATA11H = 255 - color * 3;
        PWMDATA17H = 0;
        PWMDATA14H = color * 3; 
    } else {
        color -= 170;
        PWMDATA11H = 0;
        PWMDATA17H = color * 3;
        PWMDATA14H = 255 - color * 3;     
    }
}

void whiteout(){
    PWMDATA11H = 255;
    PWMDATA17H = 255;
    PWMDATA14H = 255;
}

void blackout(){
    PWMDATA11H = 0;
    PWMDATA17H = 0;
    PWMDATA14H = 0;
}

//fibbonnacci series as a rng!
uint32_t rngU32(){
    static uint32_t past = 1;
    static uint32_t present = 1;

    present = past + present;
    past = present - past;

    return present;
}