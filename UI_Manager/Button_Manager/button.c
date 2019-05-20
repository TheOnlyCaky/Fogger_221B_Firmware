/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> Button Manager -> button.c
 *
 */

#include"button.h"


uint8_t get_button_action(){
    static uint8_t lastAction = BUTTON_NA;
    static uint8_t pressOK = 0;
    uint16_t level = get_adc_value(ADC_BUTTON);
    uint8_t retVal = BUTTON_NA;

    if(level >= BUTTON_NA_LOWER){ 
        if(pressOK >= PRESS_OK_COUNT && pressOK < PRESS_HOLD_COUNT){
            switch (lastAction)
            {
            case BUTTON_UP:
                retVal = BUTTON_UP;
                break;
            case BUTTON_DOWN:
                retVal = BUTTON_DOWN;
                break;
            case BUTTON_TIMER:
                retVal = BUTTON_TIMER;
                break;
            }
        }
        lastAction = BUTTON_NA;
        pressOK = 0;
    }
    
    /* Gets an averaged adc value and then it needs to read that
    same range of values for PRESS_OK_COUNT before it registers as 
    a press #goodDebounce */

    //Function
    if(level <= BUTTON_FUNCTION_UPPER && level > BUTTON_FUNCTION_LOWER){ 
        if(lastAction == BUTTON_FUNCTION){ 
            if(pressOK < PRESS_OK_COUNT){
                if(++pressOK >= PRESS_OK_COUNT){
                    retVal = BUTTON_FUNCTION;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_FUNCTION;
    }

    //Up
    if(level <= BUTTON_UP_UPPER && level > BUTTON_UP_LOWER){ 
        if(lastAction == BUTTON_UP){ 
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_UP_HOLD;
                } 
            } else {
                retVal = BUTTON_UP_BURST;
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_UP;
    }

    //Down
    if(level <= BUTTON_DOWN_UPPER && level > BUTTON_DOWN_LOWER){
        if(lastAction == BUTTON_DOWN){
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_DOWN_HOLD;
                } 
            } else {
                retVal = BUTTON_DOWN_BURST;
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_DOWN;
    }

    //Burst Up
    if(level <= BUTTON_BURST_UP_UPPER && level > BUTTON_BURST_UP_LOWER){
        if(lastAction == BUTTON_BURST_UP){ 
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_BURST_UP;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_BURST_UP;
    }

    //Timer
    if(level <= BUTTON_TIMER_UPPER && level > BUTTON_TIMER_LOWER){
        if(lastAction == BUTTON_TIMER){ 
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_TIMER_HOLD;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_TIMER;
    }

    //Manual
    if(level <= BUTTON_MANUAL_UPPER && level > BUTTON_MANUAL_LOWER){
        if(lastAction == BUTTON_MANUAL){ 
            if(pressOK < PRESS_OK_COUNT){
                if(++pressOK >= PRESS_OK_COUNT){
                    retVal = BUTTON_MANUAL;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_MANUAL;
    }

    //Burst
    if(level <= BUTTON_BURST_UPPER && level > BUTTON_BURST_LOWER){
        if(lastAction == BUTTON_BURST){ 
            if(pressOK < PRESS_OK_COUNT){
                if(++pressOK >= PRESS_OK_COUNT){
                    retVal = BUTTON_BURST;
                } 
            } else {
                retVal = BUTTON_BURST;
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_BURST;
    }

    //fun man
    if(level <= BUTTON_FUN_MAN_UPPER && level > BUTTON_FUN_MAN_LOWER){
        if(lastAction == BUTTON_FUN_MAN){ 
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_FUN_MAN;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_FUN_MAN;
    }
        
    //man burst
    if(level <= BUTTON_MAN_BURST_UPPER && level > BUTTON_MAN_BURST_LOWER){
        if(lastAction == BUTTON_MAN_BURST){ 
            if(pressOK < PRESS_HOLD_COUNT){
                if(++pressOK >= PRESS_HOLD_COUNT){
                    retVal = BUTTON_MAN_BURST;
                } 
            } else {
                retVal = BUTTON_MAN_BURST;
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_MAN_BURST;
    }

    //fun time
    if(level <= BUTTON_FUN_TIME_UPPER && level > BUTTON_FUN_TIME_LOWER){
        if(lastAction == BUTTON_FUN_TIME){ 
            if(pressOK < PRESS_OK_COUNT){
                if(++pressOK >= PRESS_OK_COUNT){
                    retVal = BUTTON_FUN_TIME;
                } 
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_FUN_TIME;
    }

    //fun burst
    if(level <= BUTTON_FUN_BURST_UPPER && level > BUTTON_FUN_BURST_LOWER){
        if(lastAction == BUTTON_FUN_BURST){ 
            if(pressOK < PRESS_OK_COUNT){
                if(++pressOK >= PRESS_OK_COUNT){
                    retVal = BUTTON_FUN_BURST;
                } 
            } else {
                retVal = BUTTON_FUN_BURST;
            }
        } else {
            pressOK = 0;
        }
        
        lastAction = BUTTON_FUN_BURST;
    }

    return retVal;
}

