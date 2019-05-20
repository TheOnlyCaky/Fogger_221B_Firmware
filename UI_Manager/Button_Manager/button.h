/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> Button Manager -> button.h
 *
 */

#ifndef __BUTTON_H__
#define __BUTTON_H__

#include "../../System_Include/stk6037.h"
#include <stdint.h>

/* used to read the button */
#include "../../ADC_Manager/adc.h"

#define PRESS_OK_COUNT 8
#define PRESS_HOLD_COUNT 233

#define BUTTON_NA 0
#define BUTTON_NA_LOWER 930

#define BUTTON_TIMER_UPPER 920
#define BUTTON_TIMER 1
#define BUTTON_TIMER_HOLD 200
#define BUTTON_TIMER_LOWER 900

#define BUTTON_FUNCTION_UPPER 890
#define BUTTON_FUNCTION 2
#define BUTTON_FUNCTION_LOWER 870

#define BUTTON_UP_UPPER 840
#define BUTTON_UP 3
#define BUTTON_UP_HOLD 30
#define BUTTON_UP_BURST 31
#define BUTTON_UP_LOWER 815

#define BUTTON_FUN_TIME_UPPER 810
#define BUTTON_FUN_TIME 4
#define BUTTON_FUN_TIME_LOWER 790

#define BUTTON_BURST_UPPER 710
#define BUTTON_BURST 5
#define BUTTON_BURST_LOWER 680

#define BUTTON_FUN_BURST_UPPER 650
#define BUTTON_FUN_BURST 6
#define BUTTON_FUN_BURST_LOWER 630

#define BUTTON_BURST_UP_UPPER 630
#define BUTTON_BURST_UP 7
#define BUTTON_BURST_UP_LOWER 600

#define BUTTON_MANUAL_UPPER 530
#define BUTTON_MANUAL 8
#define BUTTON_MANUAL_LOWER 510

#define BUTTON_FUN_MAN_UPPER 490
#define BUTTON_FUN_MAN 9
#define BUTTON_FUN_MAN_LOWER 460

#define BUTTON_MAN_BURST_UPPER 440
#define BUTTON_MAN_BURST 10
#define BUTTON_MAN_BURST_LOWER 420

#define BUTTON_DOWN_UPPER 170
#define BUTTON_DOWN 11
#define BUTTON_DOWN_HOLD 110
#define BUTTON_DOWN_BURST 111
#define BUTTON_DOWN_LOWER 140


uint8_t get_button_action(void);

#endif