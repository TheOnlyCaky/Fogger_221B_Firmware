/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * ADC Manager -> adc.c
 *
 */

#include "adc.h"

uint16_t get_adc_value(uint8_t index){
    uint32_t level = 0;
    uint16_t temp;
    uint8_t i, j;

    for(i = 0; i < (1 << ADC_AVERAGE_SHIFT); i++){
        temp = 0;

        if(index){
            P1_7 = 1;
            ADCSEL = bVAL_ENADC | bVAL_SADC3; //select ADC3
        } else {
            P1_4 = 1;
            ADCSEL = bVAL_ENADC | bVAL_SADC0; //select ADC0
        }

        for(j = 0; j < 8; j++){};
        while((ADCSEL & bVAL_Ready) == 0){};

        temp = (ADCVAL1 << 2);
        temp = temp | ADCVAL2;	

        ADCSEL &= ~bVAL_ENADC; //disable adc

        level += temp;
    }
    
    return (uint16_t)(level >> ADC_AVERAGE_SHIFT);
}