/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Wireless Manager -> wireless.h
 *
 */

#ifndef __WIRELESS_H__
#define __WIRELESS_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

#include "../Storage_Manager/storage.h"
#include "../Fogger_Manager/fogger.h"

/* Wireless Actions */
#define WIRELESS_ACTION_NA 0
#define WIRELESS_ACTION_PLAY 1 //Button 1
#define WIRELESS_ACTION_PAUSE 2 //Button 2
#define WIRELESS_ACTION_BURST 3 //Button 3
#define WIRELESS_ACTION_USER_CONFIG_1 4 //Button 4
#define WIRELESS_ACTION_USER_CONFIG_2 5 //Button 5
#define WIRELESS_ACTION_USER_CONFIG_3 6 //Button 6

/* Values */
#define WIRELESS_VALUE_FULL 0xFF
#define WIRELESS_VALUE_0 0x00
#define WIRELESS_VALUE_STROBE_SLOW 1
#define WIRELESS_VALUE_STROBE_MEDIUM 121
#define WIRELESS_VALUE_STROBE_FAST 255

/* Turns on/off Timer 0 used to detect a wireless command */
#define TIMER_ON 0x10

/* Pulses the remote makes */
#define BAD_WIRELESS 0x00
#define DIT 0x01
#define DAH 0x02

/* Number of bits in the wireless packet */
#define PREAMBLE 0x0557 //Dit - 1, Dah - 0
#define PREAMBLE_BITS 12
#define DAH_DIT_BITS 13

/* Be careful of interrupt vectors they are mislabeled int the datasheet*/
void wirelessBreakDetectISR(void) __interrupt (1);

void tick_wireless(void);

void handleUserConfigAction(uint8_t action);
uint8_t getWirelessAction(void);
uint8_t detectDitDah(void);

#endif
