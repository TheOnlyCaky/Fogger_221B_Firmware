/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * DMX Manager -> dmx.c
 *
 */

#include "dmx.h"

volatile uint8_t DMX[MAX_CHANNEL_MODE];
volatile uint8_t Has_DMX = 0;
static volatile uint16_t Index = 0;


/* Be careful of the interrupt vector numbers
    They are mislabeled in the datasheet -
    instead refer to interrupts.pdf
*/
void dmxReceiveByteISR(void) __interrupt (4){
    uint16_t address = get_dmx_address();

    //reset break timout
    TH3 = BREAK_TIMER_RELOAD_HIGH;
    TL3 = BREAK_TIMER_RELOAD_LOW;
    Has_DMX = 0xFF;

    Index++;

    if(Index >= address && Index < address + MAX_CHANNEL_MODE){
        DMX[Index - address] = SBUF; //sbuf is the UART0 buffer reg
    }

    //clear interrupt flag
    RI = 0;
}

//break detection
void dmxBreakDetectedISR(void) __interrupt (8){

    //if Index is 0 that means 
    //no DMX has been recieved - so blackout
    if(!Index){
        Has_DMX = 0x00;
        DMX[0] = 0x00;
        DMX[1] = 0x00;
        DMX[2] = 0x00;
        DMX[3] = 0x00;
        DMX[4] = 0x00;
        DMX[5] = 0x00;
        DMX[6] = 0x00;
        DMX[7] = 0x00;
        DMX[8] = 0x00;
    }

    Index = 0;

    //clear inturrupt flag
    EXIF &= ~EIE_Timer3_Flag;
}