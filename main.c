/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * AtmosFEAR 221B Firmware -> main.c
 *
 */

#include "System_Include/stk6037.h"

#include "Storage_Manager/storage.h"
#include "ADC_Manager/adc.h"
#include "Fogger_Manager/fogger.h"
#include "UI_Manager/ui.h" /*ui.h, button.h, display.h*/
#include "LED_Manager/led.h"
#include "Wireless_Manager/wireless.h"
#include "DMX_Manager/dmx.h"

#include <stdint.h>

#define UI_FREQ 3
#define WIRELESS_FREQ 89
#define FOGGER_FREQ 144

void main(void)
{
    /* gives time for programming*/
    uint32_t tick = FIB_31;

    /* System Init */
    CHIPCON = 0x50;
    PCLKSEL = 0x21;
    EA = 1; //global interrupts enabled
    P2_3 = 1; //enable programming

    /* Storage */
    IAP_ADRH = (uint8_t) (RUNTIME_DATA_FLASH_SAVE_PAGE >> 8);
    IAP_ADRL = (uint8_t) RUNTIME_DATA_FLASH_SAVE_PAGE;
    save_load_settings(SLOT_0, LOAD);

    /* ADC */
    P1_OPT = ADC0E | ADC3E; //enable adc input

    /* Fogger */
    P3_4 = 1; //turn fogger off
    P3_3 = 1;

    /* Initializes everything */
    tick_fogger();

    /* UI */
    /**** Display */
    SCK = 0;
    SER = 0;
    RCK = 0;

    exe_command(FUNCTION_SET);
    exe_command(ENTRY_MODE_SET);
    exe_command(CLEAR_DISPLAY);
    exe_command(DISPLAY_ON);

    /* Writes Special Chars */
    exe_command(CGRAM_ADDRESS_SET); //selector

    //Heat Off
    exe_command(0x8880);
    exe_command(0xF880);
    exe_command(0x0080);
    exe_command(0xF880);
    exe_command(0xA080);
    exe_command(0x0080);
    exe_command(0xF880);
    exe_command(0xA080);

    //Play
    exe_command(0x0080);
    exe_command(0x1080);
    exe_command(0x3080);
    exe_command(0x7080);
    exe_command(0x3080);
    exe_command(0x1080);
    exe_command(0x0080);
    exe_command(0xF880);

    //LVL 1
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0xF880);
    exe_command(0xF880);

    //LVL 2
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);

    //LVL 3
    exe_command(0x0080);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);
    exe_command(0xF880);

    //Heating
    exe_command(0x2080);
    exe_command(0x7080);
    exe_command(0x0080);
    exe_command(0x5080);
    exe_command(0x7080);
    exe_command(0x5080);
    exe_command(0x0080);
    exe_command(0xF880);

    //Heated
    exe_command(0xF880);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x5080);
    exe_command(0x7080);
    exe_command(0x5080);
    exe_command(0x0080);
    exe_command(0x0080);

    //Secret
    exe_command(0x0080);
    exe_command(0xC080);
    exe_command(0xD880);
    exe_command(0x0080);
    exe_command(0x0080);
    exe_command(0x8880); 
    exe_command(0x7080);
    exe_command(0x0080);

    /**** Buttons */
    /* Nada - set up in adc*/

    /* Puts up the welcome message*/
    tick_ui();

    /* Wireless */
    CKCON |= 0x08; //timer0
    TMOD = 0x00; //timer0 
    ET0 = 1; //timer0
    
    /* LEDs */
    blackout();
    PWM_EA1 = 0x48;
    PWM_EA2 = 0x02;

    /* Give some time for programming */
    while(tick--){}

    /* DMX */
    //init SCON - UART0 -> DMX
    SM0 = 1;
    SM1 = 1;
    SM2 = 1;
    REN = 1;

    //init TIMER2 -> UART0 Timer
    RCAP2L = BAUD_TIMER_LOW;
    RCAP2H = BAUD_TIMER_HIGH;
    RCLK = 1;
    TCLK = 1;
    EXEN2 = 0; 
    TR2 = 1;
    CT2 = 0; 
    CPRL2 = 0;

    //init TIMER3 -> Break Detect
    TH3 = BREAK_TIMER_RELOAD_HIGH;
    TL3 = BREAK_TIMER_RELOAD_LOW;

    //interrupt enable
    EIE |= EIE_Timer3;
    ES = 1;

    //set rs485 sel mode rx
    //this will also make
    //programming hard to do
    P2_3 = 0;

    power_heater(HEATER_DISABLE);

    /* Main Loop - pretty simple it just ticks each of the subsystems forever*/
	while(1){

        if(!(tick % FOGGER_FREQ)) { tick_fogger(); }

        if(!(tick % WIRELESS_FREQ)) { tick_wireless(); }

        if(!(tick % UI_FREQ)) { tick_ui(); }

        tick_led(tick++);      
	}
}
