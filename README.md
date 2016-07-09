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

--------
The MIT License (MIT) Copyright (c) 2016 Jason Dobson
Original idea ported over from Jeff Larkin
at https://gist.github.com/jefflarkin/b2fcec3817ea5d85288f
and edits by Nick Horvath at https://gist.github.com/nhorvath/a1459aeebd743ddeba991ab2afeb5938

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


#EOF


