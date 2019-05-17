rm -rf Outputs
mkdir Outputs
cd Outputs/

#sudo mount.cifs //10.0.0.2/Users/Will/Documents/Fogger_221B /media/data/

sdcc -c --opt-code-size ../ADC_Manager/adc.c

sdcc -c --opt-code-size ../UI_Manager/Display_Manager/display.c
sdcc -c --opt-code-size ../UI_Manager/Button_Manager/button.c
sdcc -c --opt-code-size ../UI_Manager/ui.c

sdcc -c --opt-code-size --no-xinit-opt ../Storage_Manager/storage.c

sdcc -c --opt-code-size ../DMX_Manager/dmx.c
sdcc -c --opt-code-size ../LED_Manager/led.c
sdcc -c --opt-code-size ../Wireless_Manager/wireless.c
sdcc -c --opt-code-size ../Fogger_Manager/fogger.c

if sdcc --verbose --opt-code-size --verbose ../main.c adc.rel ui.rel button.rel display.rel dmx.rel led.rel wireless.rel storage.rel fogger.rel; then
    packihx main.ihx > moriarty.hex

    objcopy -I ihex -O binary moriarty.hex size.bin
    echo "------------- 221 B Firmware Size ----------------"
    echo ""
    stat --printf="%s out of 16319\n" size.bin
    echo ""
    echo "--------------------------------------------------"

    sudo mv moriarty.hex /media/data/moriarty.hex
else
    echo "Wah Wah"
fi




