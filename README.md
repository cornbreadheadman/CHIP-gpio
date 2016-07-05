# CHIP-gpio
All GPIO pins for CHIP. In case NTC decides to change the pin reference again, you can edit pin-layout.sh. Otherwise all you have to do do is run:

```bash
chip@chip$ source main.sh
```

The format of the commands are: PINNAME_COMMAND pin# [mode/value]

##PINMANEs:
PWM0, AP_EINT3, TWI1_SCK, TWI1_SDA, TWI2_SCK, TWI2_SDA, LCD_D2 - LCD_D7, LCD_D10 - LCD_D15, 
LCD_D18 - LCD_D23, LCD_CLK, LCD_DE, LCD_HSYNC, LCD_VSYNC, CSIPCK, CSICK, CSIHSYNC, CSIVSYNC, 
CSID0 - CSID7, AP_EINT1, UART1_TX, UART1_RX XIO_P0 - XIO_P7

##Commmands:
enable, diable, mode, write, read

##examples:

```bash
csick_enable 0
```
Pin CSICK only has one so the pin number has to be 0.
```bash
csid_mode 3
```
If you have already enabled pin CSID3, then the output should be 'in' or 'out'.
```bash
XIO_P_enable 0
XIO_P_mode 0 out
XIO_P_write 0 1
```
These commands would enable XIO-P0, change the mode to out and change the value to 1. You could then read it with:
```bash
XIO_P_read 0
```

I hope all this is correct..

#EOF
