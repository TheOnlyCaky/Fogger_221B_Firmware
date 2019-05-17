/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> ui.h
 *
 */

#ifndef __UI_H__
#define __UI_H__

#include "../System_Include/stk6037.h"

#include "../Storage_Manager/storage.h"
#include "../Fogger_Manager/fogger.h"
#include "../DMX_Manager/dmx.h"
#include "Button_Manager/button.h"
#include "Display_Manager/display.h"

#include <stdint.h>

#define WELCOME_STATE 69 //Because I can
#define IDLE_STATE 0

#define MANUAL_FOG_POWER_STATE 1
#define MANUAL_FOG_DURATION_STATE 2
#define MANUAL_FOG_INTERVAL_STATE 3

#define MANUAL_COLOR_MACRO_STATE 4
#define MANUAL_MACRO_SPEED_STATE 5

#define MANUAL_RED_STATE 6
#define MANUAL_BLUE_STATE 7
#define MANUAL_GREEN_STATE 8
#define MANUAL_STROBE_STATE 9

#define MANUAL_REMOTE_ACTION_4_STATE 10
#define MANUAL_REMOTE_ACTION_5_STATE 11
#define MANUAL_REMOTE_ACTION_6_STATE 12

#define MANUAL_SAVE_SETTINGS_STATE 13
#define MANUAL_LOAD_SETTINGS_STATE 14

#define MANUAL_STATE_HIGH 14

#define DMX_STATE_LOW 20
#define DMX_ADDRESS_STATE 20
#define DMX_CHANNEL_MODE_STATE 21
#define DMX_STATE_HIGH 21

/* Changes */
#define CHANGE_SCREEN_X 0xFF
#define CHANGE_SCREEN_FORWARD 0x0F
#define CHANGE_SCREEN_BACKWARDS 0xF0
#define DMX_OK_CHANGE 0x80
#define NO_DMX_CHANGE 0x40
#define PLAY_CHANGE 0x20
#define PAUSE_CHANGE 0x10
#define FULL_CHANGE 0x08
#define EMPTY_CHANGE 0x04
#define HEATING_CHANGE 0x02
#define HEATED_CHANGE 0x01
#define BURSTING 0x80
#define BURSTED 0x00

/* ANIMATIONS */

#define UI_IDLE_TIMEOUT (1597)
void init_ui_manager(void);
void tick_ui(void);

//Ticks
#define IDLE_TICK 255
#define IDLE_TICK_OFFSET 89

//Offsets
#define POWER_STRING_OFFSET 0
#define MACRO_STRING_OFFSET 20
#define COLOR_STRING_OFFSET 200
#define WIRELESS_ACTION_STRING_OFFSET 60
#define SAVE_LOAD_STRING_OFFSET 80
#define DMX_STRING_OFFSET 100
#define SECRET_STRING_OFFSET 40

void idlePage(void);
void fogLevelPage(uint8_t action);
void fogIntervalPage(uint8_t action);
void fogDurationPage(uint8_t action);
void macroPage(uint8_t action);
void macroSpeedPage(uint8_t action);
void colorPage(uint8_t action);
void remotePage(uint8_t action);
void saveLoadPage(uint8_t action);
void dmxAddressPage(uint8_t action);
void dmxChannelPage(uint8_t action);

void set_ui_state(uint8_t inc, uint8_t state);
uint8_t get_ui_state(void);
char* getString(uint8_t index);

#endif