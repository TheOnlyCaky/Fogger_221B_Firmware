/* Copyright (C) Blizzard Lighting LLC. - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 * Written by Christian Krueger <christian@blizzardpro.com>, April 2019
 *
 * Storage Manager -> storage.h
 *
 */

#include "storage.h"

#define	IAP_Erase 	0x90 //Erases 512 bytes from last page - last usable memory 0x3F00		
#define	IAP_Read 	0xA0 		
#define	IAP_Write 	0xC0 //need to erase before a write...

/* Inital runtime data and saved slots */
__code __at (RUNTIME_DATA_FLASH_SAVE_PAGE) uint8_t Init_Data[CONFIG_COUNT*SLOT_COUNT] = {
    0x88, 0x06, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0C, 0x0A, 0x00, 0x01, 0x00, 0x00, //slot0
    0x88, 0x06, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0C, 0x0A, 0x00, 0x01, 0x00, 0x00, //slot1
    0x88, 0x06, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0C, 0x0A, 0x00, 0x01, 0x00, 0x00, //slot2
    0x88, 0x06, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0B, 0x0C, 0x0A, 0x00, 0x01, 0x00, 0x00, //slot3
};

/* Buffer to store Runtime data and save slots to write to flash */
__xdata __at (RUNTIME_DATA_AUX_MEMORY_BUFFER) uint8_t IAP_AUX[CONFIG_COUNT*SLOT_COUNT];

/* Runtime Data for whole program */
static volatile uint8_t Runtime_Data[CONFIG_COUNT];

void save_load_settings(uint8_t slot, uint8_t save){
    uint8_t i;

    slot = slot * CONFIG_COUNT;

    if(save == LOAD){
        IAPEN = IAP_Read; //read
    }

    for(i = 0; i < CONFIG_COUNT; i++){
        if(save == SAVE){
            IAP_AUX[i + slot] = Runtime_Data[i];
        } else{ //load
            Runtime_Data[i] = IAP_AUX[i + slot];
        }
    }

    if(save == SAVE){
        IAPEN = IAP_Erase; //have to erase before write...
        IAPEN = IAP_Write;  
        Nop(); //datasheet recommend no operation following write
    }
}

uint8_t get_runtime_data(uint8_t index){
    uint8_t value;
    
    if(index == OP_MODE_INDEX){
        return Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;
    }

    value = Runtime_Data[index];

    switch (index)
    {
        case FOG_POWER_INDEX:
            return (value & ~OP_MODE_BIT) % FOG_OPTIONS;
        case FOG_DURATION_INDEX:
        case FOG_INTERVAL_INDEX:
            if(value == 0){ value = 1; } //we dont want a 0 duration or interval
            return value;
        case MACRO_INDEX:
            return value % MACRO_OPTIONS;
        case R4_INDEX:
        case R5_INDEX:
        case R6_INDEX:
            return value % WIRELESS_ACTION_OPTIONS;
        case MODE_INDEX:
            return value % DMX_OPTIONS;
            break;
    }

    return value;
}

void set_runtime_data(uint8_t index, uint8_t inc, uint8_t value){
    uint8_t opMode = Runtime_Data[FOG_POWER_INDEX] & OP_MODE_BIT;

    /* It is important to note that the 7th bit of FOG POWER INDEX is the operation mode bit
        Set = Manual Mode
        Cleared = DMX Mode
    */

    switch(inc){
        case INC:
            Runtime_Data[index]++;
        break;
        case DEC:
            Runtime_Data[index]--;
        break;
        default:
            if(index == OP_MODE_INDEX){
                if(value) { 
                    Runtime_Data[FOG_POWER_INDEX] |= OP_MODE_BIT;
                } else {
                    Runtime_Data[FOG_POWER_INDEX] &= ~OP_MODE_BIT;
                }
            } else {
                Runtime_Data[index] = value;
            }
        break;
    }

    if(index == FOG_POWER_INDEX){
        if(opMode){
            Runtime_Data[index] |= OP_MODE_BIT;
        } else {
            Runtime_Data[index] &= ~OP_MODE_BIT;
        }
    }

    save_load_settings(SLOT_0, SAVE);
}

void set_dmx_address(uint8_t inc){
    uint16_t addr = get_dmx_address();

    if(inc == INC){
        if(addr >= DMX_MAX_ADDRESS){
            addr = 1;
        } else {
            addr++;
        }
    } else { //dec
        if(addr <= 1){
            addr = DMX_MAX_ADDRESS;
        } else {
            addr--;
        }
    }

    set_runtime_data(ADDR_L_INDEX, VALUE, (uint8_t) addr);
    set_runtime_data(ADDR_H_INDEX, VALUE, (uint8_t) (addr >> 8));

}

uint16_t get_dmx_address(){
    uint16_t address = 0;

    address |= (Runtime_Data[ADDR_H_INDEX] << 8);
    address |= Runtime_Data[ADDR_L_INDEX];

    return address;
}
