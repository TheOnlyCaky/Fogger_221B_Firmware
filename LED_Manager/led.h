/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * LED Manager -> led.h
 *
 */

#ifndef __LED_H__
#define __LED_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

#include "../DMX_Manager/dmx.h"
#include "../Storage_Manager/storage.h"

#define STROBE_FREQ 540
#define MACRO_FREQ 133
#define STORM_FREQ 89

/* SHHHH */
#define SH_B 0x80000000 
#define SH_0 0xEE3BB8BA
#define SH_1 0x28B8BA38
#define SH_2 0xEBB80000


void tick_led(uint32_t tick);

uint8_t dmx_to_macro(uint8_t dmx_value);
void play_macro(uint32_t tick, uint8_t macro, uint8_t macro_speed);

void color_wheel(uint8_t color);
void whiteout(void);
void blackout(void);

uint32_t rngU32(void);

void set_leds(uint8_t red, uint8_t green, uint8_t blue);

#endif