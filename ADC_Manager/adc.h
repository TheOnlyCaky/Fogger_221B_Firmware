/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * ADC Manager -> adc.h
 *
 */

#ifndef __ADC_H__
#define __ADC_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

#define ADC_AVERAGE_SHIFT 5

#define ADC_TEMPERATURE 0

#define ADC_BUTTON 1

uint16_t get_adc_value(uint8_t index);

#endif