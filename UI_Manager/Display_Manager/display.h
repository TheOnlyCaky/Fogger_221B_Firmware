/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> Display Manager -> display.h
 *
 */

#ifndef __DISPLAY_H__
#define __DISPLAY_H__

#include"../../System_Include/stk6037.h"
#include <stdint.h>

/* Commands */
#define CLEAR_DISPLAY 0x8000
#define RETURN_HOME 0x4000
#define ENTRY_MODE_SET 0x1E00
#define DISPLAY_ON 0x3000
#define DISPLAY_OFF 0x1000
#define FUNCTION_SET 0x3C00
#define CGRAM_ADDRESS_SET 0x0200
#define DDRAM_ADDRESS_SET 0x0100
#define RAM_WRITE 0x0080
#define READ_BUSY 0x0040
#define SHIFT_RIGHT 0x3800
#define SHIFT_LEFT 0x1800

/* This works because the cursor 
is located at address 0*/
#define WRITE_CURSOR RAM_WRITE

/* Chars */
#define CHAR_NULL 0x04

#define CHAR_0 0x0C
#define CHAR_1 0x8C
#define CHAR_2 0x4C
#define CHAR_3 0xCC
#define CHAR_4 0x2C
#define CHAR_5 0xAC
#define CHAR_6 0x6C
#define CHAR_7 0xEC
#define CHAR_8 0x1C
#define CHAR_9 0x9C

#define CHAR_A 0x82
#define CHAR_B 0x42
#define CHAR_C 0xC2
#define CHAR_D 0x22
#define CHAR_E 0xA2
#define CHAR_F 0x62
#define CHAR_G 0xE2
#define CHAR_H 0x12
#define CHAR_I 0x92
#define CHAR_J 0x52
#define CHAR_K 0xD2
#define CHAR_L 0x32
#define CHAR_M 0xB2
#define CHAR_N 0x72
#define CHAR_O 0xF2
#define CHAR_P 0x0A
#define CHAR_Q 0x8A
#define CHAR_R 0x4A
#define CHAR_S 0xCA
#define CHAR_T 0x2A
#define CHAR_U 0xAA
#define CHAR_V 0x6A
#define CHAR_W 0xEA
#define CHAR_X 0x1A
#define CHAR_Y 0x9A
#define CHAR_Z 0x5A

#define CHAR_a 0x86
#define CHAR_b 0x46
#define CHAR_c 0xC6
#define CHAR_d 0x26
#define CHAR_e 0xA6
#define CHAR_f 0x66
#define CHAR_g 0xE6
#define CHAR_h 0x16
#define CHAR_i 0x96
#define CHAR_j 0x56
#define CHAR_k 0xD6
#define CHAR_l 0x36
#define CHAR_m 0xB6
#define CHAR_n 0x76
#define CHAR_o 0xF6
#define CHAR_p 0x0E
#define CHAR_q 0x8E
#define CHAR_r 0x4E
#define CHAR_s 0xCE
#define CHAR_t 0x2E
#define CHAR_u 0xAE
#define CHAR_v 0x6E
#define CHAR_w 0xEE
#define CHAR_x 0x1E
#define CHAR_y 0x9E
#define CHAR_z 0x5E

#define CHAR_PLUS 0xD4
#define CHAR_AND 0x64

#define CHAR_STAR_1 0x00
#define CHAR_STAR_2 0x80
#define CHAR_STAR_3 0x40
#define CHAR_STAR_4 0xC0
#define CHAR_STAR_5 0x20
#define CHAR_STAR_6 0xA0
#define CHAR_STAR_7 0x60
#define CHAR_STAR_8 0xE0

#define CHAR_PLAY CHAR_STAR_2
#define CHAR_LVL_1 CHAR_STAR_3
#define CHAR_LVL_2 CHAR_STAR_4
#define CHAR_LVL_3 CHAR_STAR_5
#define CHAR_HEATING CHAR_STAR_6
#define CHAR_HEATED CHAR_STAR_7

#define CG_STAR_1 0x0000
#define CG_STAR_2 0x1000
#define CG_STAR_3 0x0800
#define CG_STAR_4 0x1800
#define CG_STAR_5 0x0400
#define CG_STAR_6 0x1400
#define CG_STAR_7 0x0C00
#define CG_STAR_8 0x1C00

/* Common Macros */
#define LINE_LENGTH 16
#define NUMBER_END_INDEX (LINE_LENGTH-4)
#define START_INDEX 0
#define LAST_INDEX 15

#define PLAY_ICON_INDEX (LAST_INDEX - 1)
#define TANK_ICON_INDEX (LAST_INDEX - 1)
#define HEAT_ICON_INDEX (LAST_INDEX - 0)

#define LINE_0 0
#define LINE_1 1

#define SELECTED 1
#define NOT_SELECTED 0

/* External Commands */
void write_string(char* string, uint8_t length, uint8_t index, uint8_t line, uint8_t selected);
void write_number(uint16_t number, uint8_t index, uint8_t line, uint8_t selected); //always length 4
void write_char(uint8_t command, uint8_t index, uint8_t line);
void exe_command(uint16_t value);

/* External Gears*/
uint8_t charToCode(char c);

/* Internal Gears */
void writeShiftReg(uint16_t value);

/* General Tools */
uint8_t flipByte(uint8_t line);

#endif