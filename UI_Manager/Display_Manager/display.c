/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * UI Manager -> Display Manager -> display.c
 *
 */

#include "display.h"

/* Number of bits that matter to the display
 (from the shift register */
#define USEFUL_BITS 12

void write_string(char* string, uint8_t length, uint8_t index, uint8_t line, uint8_t selected){
    uint8_t i, done = 0;

    //set address
    exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));

    length++; //null terminated

    if(selected){
        exe_command(WRITE_CURSOR);
    }

    for(i = 0; i < length; i++){
        if(!done){
            if(string[i]){
                exe_command(RAM_WRITE | (charToCode(string[i]) << 8));
            } else {
                done = 1;
            }
        } else {
            exe_command(RAM_WRITE | (CHAR_NULL << 8));
        }
    }
}

void write_number(uint16_t number, uint8_t index, uint8_t line, uint8_t selected){
    uint8_t higherNumberPresent = 0;
    uint16_t value;
    uint8_t chars[3] = {CHAR_NULL, CHAR_NULL, CHAR_0};

    if(number >= 1000) {number = 999;}

    exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));


    if(selected){
        exe_command(WRITE_CURSOR);
    } else {
        exe_command(RAM_WRITE | (CHAR_NULL << 8));
    }
    
    /* Yay ascii being + 0x30 than the number ie 1->0x31*/
    value = number/100;
    if(value){
        chars[0] = charToCode(value + 0x30);
        higherNumberPresent = 1;
        number -= value*100;
    }

    value = number/10;
    if(higherNumberPresent || value){
        chars[1] = charToCode(value + 0x30);
        number -= value*10;
    }

    chars[2] = charToCode(number + 0x30);

    exe_command(RAM_WRITE | (chars[0] << 8));
    exe_command(RAM_WRITE | (chars[1] << 8));
    exe_command(RAM_WRITE | (chars[2] << 8));

}

void write_char(uint8_t command, uint8_t index, uint8_t line){
    exe_command(DDRAM_ADDRESS_SET | (flipByte((line) ? index + 0x40 : index) << 8));
    exe_command(RAM_WRITE | (command << 8));
}

/* You literally have to write the command twice because of one
    piece of shit bit - the execution bit - trust me you have to...*/
void exe_command(uint16_t command){
    uint16_t delay = 0x300;

    command |= (1 << EXE_BIT);
    writeShiftReg(command); //execute
    command &= ~(1 << EXE_BIT);
    writeShiftReg(command); //end execution

    /* only need to delay for the clear display command */
    while(delay-- && command == CLEAR_DISPLAY){;;}
}


/* External Gears*/
uint8_t charToCode(char c){
    switch(c){
        case 'A':
            return CHAR_A;
        case 'a':
            return CHAR_a;
        case 'B':
            return CHAR_B;
        case 'b':
            return CHAR_b;
        case 'C':
            return CHAR_C;
        case 'c':
            return CHAR_c;
        case 'D':
            return CHAR_D;
        case 'd':
            return CHAR_d;
        case 'E':
            return CHAR_E;
        case 'e':
            return CHAR_e;
        case 'F':
            return CHAR_F;
        case 'f':
            return CHAR_f;
        case 'G':
            return CHAR_G;
        case 'g':
            return CHAR_g;
        case 'H':
            return CHAR_H;
        case 'h':
            return CHAR_h;
        case 'I':
            return CHAR_I;
        case 'i':
            return CHAR_i;
        case 'J':
            return CHAR_J;
        case 'j':
            return CHAR_j;
        case 'K':
            return CHAR_K;
        case 'k':
            return CHAR_k;
        case 'L':
            return CHAR_L;
        case 'l':
            return CHAR_l;
        case 'M':
            return CHAR_M;
        case 'm':
            return CHAR_m;
        case 'N':
            return CHAR_N;
        case 'n':
            return CHAR_n;
        case 'O':
            return CHAR_O;
        case 'o':
            return CHAR_o;
        case 'P':
            return CHAR_P;
        case 'p':
            return CHAR_p;
        case 'Q':
            return CHAR_Q;
        case 'q':
            return CHAR_q;
        case 'R':
            return CHAR_R;
        case 'r':
            return CHAR_r;
        case 'S':
            return CHAR_S;
        case 's':
            return CHAR_s;
        case 'T':
            return CHAR_T;
        case 't':
            return CHAR_t;
        case 'U':
            return CHAR_U;
        case 'u':
            return CHAR_u;
        case 'V':
            return CHAR_V;
        case 'v':
            return CHAR_v;
        case 'W':
            return CHAR_W;
        case 'w':
            return CHAR_w;
        case 'X':
            return CHAR_X;
        case 'x':
            return CHAR_x;
        case 'Y':
            return CHAR_Y;
        case 'y':
            return CHAR_y;
        case 'Z':
            return CHAR_Z;
        case 'z':
            return CHAR_z;
        case '0':
            return CHAR_0;
        case '1':
            return CHAR_1;
        case '2':
            return CHAR_2;
        case '3':
            return CHAR_3;
        case '4':
            return CHAR_4;
        case '5':
            return CHAR_5;
        case '6':
            return CHAR_6;
        case '7':
            return CHAR_7;
        case '8':
            return CHAR_8;
        case '9':
            return CHAR_9;
        case '+':
            return CHAR_PLUS;
        case '&':
            return CHAR_AND;
        case ';':
            return CHAR_STAR_7;
    }

    return CHAR_NULL;
}

/* Internal Gears */
/* Im actually kind of proud this whole thing works
    100% Bit Banged */
void writeShiftReg(uint16_t value){
    uint8_t i = 0;

    for(i = 4; i < USEFUL_BITS+4; i++){
        SER = value & (1 << i);

        /* Bit Bang a clock! Fuck Yeah! */
        SCK = 1;
        SCK = 0;
    }
    RCK = 1;
    RCK = 0;
}

/* All of the bits are backwards for the display so this is a thing... */
uint8_t flipByte(uint8_t line){
    uint8_t i, temp = 0;

    for(i = 0; i < 8; i++){
        temp |= (((line & (0x80 >> i)) ? 1 : 0) << i);
    }

    return temp;
}


