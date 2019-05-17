/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * DMX Manager -> dmx.h
 *
 */

#ifndef __DMX_H__
#define __DMX_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

#include "../Storage_Manager/storage.h"

//24Tick/uS (clock) * (0xFFFF - TIMER_HI:TIMER_LO) = 88uS
#define BREAK_TIMER_RELOAD_HIGH 0xFC
#define BREAK_TIMER_RELOAD_LOW 0xD0

//clk/(32*[65536-(BAUD_HI:BAUD_LO)]) = 250K
#define BAUD_TIMER_HIGH 0xFF
#define BAUD_TIMER_LOW 0xFD

/* Globals */
#define MAX_CHANNEL_MODE 9
#define DMX_MAX_ADDRESS 512

/* Mode indexes*/
#define DMX_M1_FOG_INDEX 0

#define DMX_M3_MACRO_INDEX 1
#define DMX_M3_MACRO_SPEED_INDEX 2

#define DMX_M9_POWER_INDEX 0
#define DMX_M9_DURATION_INDEX 1
#define DMX_M9_INTERVAL_INDEX 2
#define DMX_M9_RED_INDEX 3
#define DMX_M9_GREEN_INDEX 4
#define DMX_M9_BLUE_INDEX 5
#define DMX_M9_STROBE_INDEX 6
#define DMX_M9_MACRO_INDEX 7
#define DMX_M9_MACRO_SPEED_INDEX 8

//all at high
//Modes 1 + 3
#define DMX_FOG_OFF 20
#define DMX_FOG_3_8 40
#define DMX_FOG_3_13 60
#define DMX_FOG_3_21 80 
#define DMX_FOG_3_34 100
#define DMX_FOG_3_55 120
#define DMX_FOG_8_21 140
#define DMX_FOG_8_34 160
#define DMX_FOG_8_55 180
#define DMX_FOG_8_89 200
#define DMX_FOG_8_144 220
#define DMX_FOG_21_55 240
#define DMC_FOG_21_89 255

#define DMX_FOG_LOW 100
#define DMX_FOG_MEDIUM 200
#define DMX_FOG_HIGH 255

//Macro Modes
#define DMX_MACRO_NONE 20
#define DMX_MACRO_COLOR_WHEEL 148
#define DMX_MACRO_WHITE 180
#define DMX_MACRO_RAINBOW 190
#define DMX_MACRO_FIRE 200//yellow orange red
#define DMX_MACRO_WATER 210// blue cyan
#define DMX_MACRO_ACID 220//green
#define DMX_MACRO_ETHER 230//purple
#define DMX_MACRO_STORM 240// white blue
#define DMX_MACRO_MORIARTY 255

void dmxReceiveByteISR(void) __interrupt (4);
void dmxBreakDetectedISR(void) __interrupt (8);

extern volatile uint8_t DMX[MAX_CHANNEL_MODE];
#define get_dmx_value(index) (DMX[index])

extern volatile uint8_t Has_DMX;
#define has_dmx() (Has_DMX)

#endif