#include "stdint.h"
#include "dmx.h"
//UART0
__sfr __at (0x98) SCON0; 
__sfr __at (0x99) SBUF0;
__sfr __at (0x9A) TL3;
__sfr __at (0x9B) TH3;
//TIMER2
__sfr __at (0xC8) T2CON;
__sfr __at (0xC9) T2MOD;
__sfr __at (0xCA) RCAP2L;
__sfr __at (0xCB) RCAP2H;
__sfr __at (0xCC) TL2;
__sfr __at (0xCD) TH2;

/* DMX is on UART0 along with the programming pins*/
//TIMER3
__sfr __at (0xBF) CHIPCON;
__sfr __at (0x9A) TL3;
__sfr __at (0x9B) TH3;

//IE - interrupt enable
__sfr __at (0xA8) IE; 

static volatile uint16_t index = 0;

void dmx_isr() __interrupt (UART0_ISR_VECTOR){
    index++; //increment index
    //save varable
    //reset Break timer
    TL3 = 0x7F;
    TH3 = 0xF8;
    //clear int flag

    //toggle dmx led?
}

void dmx_timer_isr() __interrupt(TIMER2_ISR_VECTOR){
    ;;//?
}

void dmx_isr() __interrupt (1){
    ;;
void dmx_break_isr() __interrupt(TIMER3_ISR_VECTOR){

    index = 0; //break found
    TL3 = 0;
    TH3 = 0;

    //clear int flag
}

void init_dmx_manager(){
    uint8_t i = 0;

    //Setup UART0
    SCON0 |= 0b1101100; //setup uart 11011
    SCON0 &= 0b1101110;
    SCON0 |= 0b1111100; //setup uart 11011
    SCON0 &= 0b1111110;

    //Setup TIMER2
    T2CON |= 0b00110000;
    T2CON &= 0b11110000;
    //T2MOD don't care
    RCAP2L = 0xFD;
    RCAP2H = 0xFF;

    //setup TIMER3
    CHIPCON |= 0b01000000;
    TL3 = 0x0;
    TH3 = 0x0;

    //Enable IE
    IE |= 0; //TODO this
}