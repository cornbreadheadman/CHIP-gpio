# CHIP-gpio
All GPIO pins for CHIP. In case NTC decides to change the pin reference again, you can edit pin-layout.sh. You may have to edit the file locations in main.sh. Otherwise all you have to do do is run:

```bash
source main.sh
```

The format of the commands are: PINNAME_COMMAND pin# [mode/value]

##PINNAMES:
pwm0, ap_eint3, twi1_sck, twi1_sda, twi2_sck, twi2_sda, lcd_d2 - lcd_d7, lcd_d10 - lcd_d15, lcd_d18 - lcd_d23, lcd_clk, lcd_de, lcd_hsync, lcd_vsync, csipck, csick, csihsync, csivsync, csid0 - csid7, ap_eint1, uart1_tx, uart1_rx, xio_p0 - xio_p7

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
xpio_p_enable 0
xpio_p_mode 0 out
xpio_p_write 0 1
```
These commands would enable XIO-P0, change the mode to out and change the value to 1. You could then read it with:
```bash
xpio_p_read 0
```

case sensitve, btw..

#EOF


