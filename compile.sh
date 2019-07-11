rm -rf Outputs
mkdir Outputs
cd Outputs/

#sudo mount.cifs //10.0.0.2/Users/Will/Documents/Fogger_221B /media/data/

sdcc -c --opt-code-size --stack-auto ../ADC_Manager/adc.c

sdcc -c --opt-code-size --stack-auto ../UI_Manager/Display_Manager/display.c
sdcc -c --opt-code-size --stack-auto ../UI_Manager/Button_Manager/button.c
sdcc -c --opt-code-size --stack-auto ../UI_Manager/ui.c

sdcc -c --opt-code-size --no-xinit-opt --stack-auto ../Storage_Manager/storage.c

sdcc -c --opt-code-size --stack-auto ../DMX_Manager/dmx.c
sdcc -c --opt-code-size --stack-auto ../LED_Manager/led.c
sdcc -c --opt-code-size --stack-auto ../Wireless_Manager/wireless.c
sdcc -c --opt-code-size --stack-auto ../Fogger_Manager/fogger.c

if sdcc --verbose --opt-code-size --verbose --stack-auto ../main.c adc.rel ui.rel button.rel display.rel dmx.rel led.rel wireless.rel storage.rel fogger.rel; then
    packihx main.ihx > moriarty.hex

    objcopy -I ihex -O binary moriarty.hex size.bin
    echo "------------- 221 B Firmware Size ----------------"
    echo ""
    stat --printf="%s out of 16319\n" size.bin
    echo ""
    echo "--------------------------------------------------"

    sudo cp moriarty.hex /media/data/moriarty.hex
    sudo mv moriarty.hex ../
else
    echo "Wah Wah"
fi




