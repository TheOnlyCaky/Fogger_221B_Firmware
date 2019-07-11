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
    uint8_t dimmer;
    uint8_t value;
    uint8_t strobe;

    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
        switch(get_runtime_data(MODE_INDEX)){
            case OPTION_DMX_MODE_11:
                value = get_dmx_value(DMX_M11_MACRO_INDEX);

                if(value > DMX_MACRO_NONE){
                    if(value <= DMX_MACRO_COLOR_WHEEL){ /* Color wheel Macro */
                        color_wheel((value - DMX_MACRO_NONE - 1) << 1);
                    } else { /* Other Macros */
                        dimmer = get_dmx_value(DMX_M11_MACRO_SPEED_INDEX);

                        if(dimmer > 10){
                            play_macro(tick, dmx_to_macro(value), dimmer - 5);
                        } else {
                            play_macro(1, dmx_to_macro(value), 0xFF);
                        }
                    }
                } else { /* No macro being played */

                    strobe = get_dmx_value(DMX_M11_STROBE_INDEX);

                    if(strobe > 10){
                        if(!(tick % (STROBE_FREQ - (strobe << 1)))){
                            on = ~on;
                        }
                    } else {
                        on = 0xFF;
                    }

                    if(on){

                        set_leds(get_dmx_value(DMX_M11_RED_INDEX),
                                get_dmx_value(DMX_M11_GREEN_INDEX),
                                get_dmx_value(DMX_M11_BLUE_INDEX));

                    } else {
                        blackout();
                    }

                }
            break;
            case OPTION_DMX_MODE_3: /* Only macros */
                value = get_dmx_value(DMX_M3_MACRO_INDEX);
                if(value > DMX_MACRO_NONE){
                    if(value < DMX_MACRO_COLOR_WHEEL){
                        color_wheel((value - DMX_MACRO_NONE - 1) << 1);
                    } else {
                        dimmer = get_dmx_value(DMX_M3_MACRO_SPEED_INDEX);

                        if(dimmer > 10){
                            play_macro(tick, dmx_to_macro(value), dimmer - 5);
                        } else {
                            play_macro(1, dmx_to_macro(value), 0xFF);
                        }
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
                set_leds(get_runtime_data(RED_INDEX), get_runtime_data(GREEN_INDEX), get_runtime_data(BLUE_INDEX));
            } else {
                blackout();
            }
        }
    }
}

uint8_t dmx_to_macro(uint8_t dmx_value){

    if(dmx_value <= DMX_MACRO_WHITE){
        return OPTION_MACRO_WHITE;
    } else if(dmx_value <= DMX_MACRO_RAINBOW){
        return OPTION_MACRO_RAINBOW_DMX;
    } else if(dmx_value <= DMX_MACRO_FIRE){
        return OPTION_MACRO_FIRE_DMX;
    } else if(dmx_value <= DMX_MACRO_WATER){
        return OPTION_MACRO_WATER_DMX;
    } else if(dmx_value <= DMX_MACRO_ACID){
        return OPTION_MACRO_ACID_DMX;
    } else if(dmx_value <= DMX_MACRO_ETHER){
        return OPTION_MACRO_ETHER_DMX;
    } else if(dmx_value <= DMX_MACRO_STORM){
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
        rng = 0;

        if(macro_speed){
            tock++;
            rng = rngU32();
        }
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

                set_leds(primaryCount, (uint8_t) (rng % (primaryCount >> 2)), (!(rng % 13)) ? PWMDATA17H > 1 : 0);

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
                    set_leds(secondaryCount, secondaryCount, primaryCount);
                } else if(macro == OPTION_MACRO_ACID_DMX){ //acid
                    set_leds(secondaryCount, primaryCount, 0);
                } else if(macro == OPTION_MACRO_ETHER_DMX){ //ether
                    set_leds(primaryCount, secondaryCount, primaryCount);
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

                set_leds(primaryCount, primaryCount, primaryCount);

            }
            break;
        case OPTION_MACRO_WHITE: //w
            whiteout();
            break;
        case 69:
            if(tock < 32){
                rng = SH_0;
                if(rng & (SH_B >> tock)){
                    whiteout(); //White - Worth
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
        set_leds(color * 3, 255 - color * 3, 0);
    } else if(color < 170){
        color -= 85;
        set_leds(255 - color * 3, 0, color * 3);
    } else {
        color -= 170;
        set_leds(0, color * 3, 255 - color * 3);
    }
}

void whiteout(){
    set_leds(0xFF, 0xFF, 0xFF);
}

void blackout(){
    set_leds(0,0,0);
}

//fibbonnacci series as a rng!
uint32_t rngU32(){
    static uint32_t past = 1;
    static uint32_t present = 1;

    present = past + present;
    past = present - past;

    return present;
}

void set_leds(uint8_t red, uint8_t green, uint8_t blue){
    uint8_t dimmer = 0xFF;

    if(get_runtime_data(OP_MODE_INDEX) == MODE_DMX){
        if(get_runtime_data(MODE_INDEX) == OPTION_DMX_MODE_11){
            dimmer = get_dmx_value(DMX_M11_DIMMER_INDEX);
        }
    }

    if(dimmer == 0xFF){
        PWMDATA11H = red;
        PWMDATA17H = green;
        PWMDATA14H = blue;
    } else {
        PWMDATA11H = ((uint8_t)((((uint16_t) red) * ((uint16_t)dimmer)) >> 8));
        PWMDATA17H = ((uint8_t)((((uint16_t) green) * ((uint16_t)dimmer)) >> 8));
        PWMDATA14H = ((uint8_t)((((uint16_t) blue) * ((uint16_t)dimmer)) >> 8));
    }
}