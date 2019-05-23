/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Fogger Manager -> fogger.h
 *
 */

#ifndef __FOGGER_H__
#define __FOGGER_H__

#include "../System_Include/stk6037.h"
#include <stdint.h>

/* Needs to get Runtime data and DMX data */
#include "../Storage_Manager/storage.h"
#include "../DMX_Manager/dmx.h"
#include "../ADC_Manager/adc.h"
#include "../UI_Manager/ui.h" //take out

/* ADC temp values */
#define HEAT_HIGH 185
#define HEAT_OK 170
#define HEAT_LOW 140

#define HEATER_DISABLE 1
#define HEATER_ENABLE 0

/* Refill Fluid Count */
#define REFILL_FLUID_COUNT 34

/* Pump Actions */
#define PUMP_OFF 0 
#define PUMP_ON 1 /* Needs to be heated and have a full tank */
#define PUMP_OVERRIDE 2 /* Needs to have a full tank (Burst)*/
#define PUMP_MASTER_OVERRIDE 3 /* Always runs the pump (Function+Burst)*/

/* Flags */
/* These values are important */
#define PUMP_FLAG 0x01
#define HOT_FLAG 0x02
#define COLD_FLAG 0x04
#define HEAT_DISABLE_FLAG 0x10

#define HEATING 0
#define HEATED 0x80

#define TANK_FULL 1
#define TANK_EMPTY 0

#define PAUSE 0
#define PLAY 1
#define RESET 2

#define INTERVAL 0x00
#define DURATION 0xFF

/* Fog Levels - These values are used as shift bits
    so do not modify */
#define FOG_HIGH 0x01 //Full on for the second
#define FOG_MED 0x02 //Half on for the second
#define FOG_LO 0x04 //Fourth on for the second

/* Ticker */
void tick_fogger(void);

/* Action */
void power_pump(uint8_t action);
void power_heater(uint8_t action);

/* Getters/Setter */
extern uint8_t Timer;
#define get_timer() (Timer);

extern uint8_t Interval_Or_Duration;
#define get_interval_or_duration() (Interval_Or_Duration)

extern uint8_t Playing;
#define get_playing() (Playing)
#define set_playing(action) Playing = (action)

extern uint8_t Heat_Flag;
#define get_heated() (Heat_Flag & HEATED)
#define get_heater_enabled() ((Heat_Flag & HEAT_DISABLE_FLAG) == 0x00)

extern uint8_t Fluid_Level;
#define get_fog_fluid_level() (Fluid_Level) 

#endif