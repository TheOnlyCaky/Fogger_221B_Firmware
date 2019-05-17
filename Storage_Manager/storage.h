/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Storage Manager -> storage.h
 *
 */

#ifndef __STORAGE_H__
#define __STORAGE_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

#include "../DMX_Manager/dmx.h"
    
#define CONFIG_COUNT 16
#define SLOT_COUNT 4

/* Memory Addresses */
#define RUNTIME_DATA_FLASH_SAVE_PAGE 0x3FC0
#define RUNTIME_DATA_AUX_MEMORY_BUFFER 0x100

#define FOG_POWER_INDEX 0
#define FOG_DURATION_INDEX 1
#define FOG_INTERVAL_INDEX 2
#define MACRO_INDEX 3
#define MACRO_SPEED_INDEX 4
#define RED_INDEX 5
#define GREEN_INDEX 6
#define BLUE_INDEX 7
#define STROBE_INDEX 8
#define R4_INDEX 9
#define R5_INDEX 10
#define R6_INDEX 11
#define ADDR_H_INDEX 12
#define ADDR_L_INDEX 13
#define MODE_INDEX 14
#define TANK_LIGHTS_INDEX 15
#define OP_MODE_INDEX 16

/* Operation Mode 
Op mode is the 7th bit in the 
Fog Power Index
Set = Manual Mode
Cleared = DMX Mode
*/
#define OP_MODE_BIT 0x80
#define MODE_MANUAL 0x80
#define MODE_DMX 0x00

/* Option Counts */
#define FOG_OPTIONS 3
#define DMX_OPTIONS 3
#define MACRO_OPTIONS 7
#define WIRELESS_ACTION_OPTIONS 13

/* Fog Options */
#define OPTION_FOG_HIGH 0
#define OPTION_FOG_MEDIUM 1
#define OPTION_FOG_LOW 2

/* DMX Options */
#define OPTION_DMX_MODE_9 0
#define OPTION_DMX_MODE_3 1
#define OPTION_DMX_MODE_1 2

/* Macro Options */ 
#define OPTION_MACRO_NONE 0
#define OPTION_MACRO_RAINBOW_DMX 1
#define OPTION_MACRO_FIRE_DMX 2
#define OPTION_MACRO_WATER_DMX 3
#define OPTION_MACRO_ACID_DMX 4
#define OPTION_MACRO_ETHER_DMX 5
#define OPTION_MACRO_STORM_DMX 6
#define OPTION_MACRO_WHITE 33
#define OPTION_MACRO_COLOR_WHEEL 55
#define OPTION_MACRO_MORIARTY 69

/* Wireless Action Options */ 
#define OPTION_WIRELESS_ACITON_NONE 0
#define OPTION_WIRELESS_ACTION_CHOOSE_MACRO 1
#define OPTION_WIRELESS_ACTION_RED 2
#define OPTION_WIRELESS_ACTION_YELLOW 3
#define OPTION_WIRELESS_ACTION_GREEN 4
#define OPTION_WIRELESS_ACTION_CYAN 5
#define OPTION_WIRELESS_ACTION_BLUE 6
#define OPTION_WIRELESS_ACTION_MAGENTA 7
#define OPTION_WIRELESS_ACTION_STROBE_SLOW 8
#define OPTION_WIRELESS_ACTION_STROBE_MEDIUM 9
#define OPTION_WIRELESS_ACTION_STROBE_FAST 10
#define OPTION_WIRELESS_ACTION_BLACKOUT 11
#define OPTION_WIRELESS_ACTION_WHITEOUT 12

/* Slot Options */
#define OPTION_SLOT_1 0
#define OPTION_SLOT_2 1
#define OPTION_SLOT_3 2

/* Slots - Slot0 is last use
    Slot1-3 are user saves */
#define SLOT_0 0
#define SLOT_1 16
#define SLOT_2 32
#define SLOT_3 48

/* Save Load Actions*/
#define LOAD 0
#define SAVE 1

/* no value */
#define NULL 0

/* inc actions */
#define VALUE 0
#define INC 1
#define DEC 2

void save_load_settings(uint8_t slot, uint8_t load);

uint8_t get_runtime_data(uint8_t index);
void set_runtime_data(uint8_t index, uint8_t inc, uint8_t value);

uint16_t get_dmx_address(void);
void set_dmx_address(uint8_t inc);

#endif