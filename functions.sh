#!/bin/bash

## PWM0 ##

# Enable exposure of the specified PWM0 pin. (34)
pwm0_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$PWM0;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified PWM0 pin. (34)
pwm0_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$PWM0;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin PWM0 (34) to input or output mode
pwm0_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($PWM0));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "PWM0$1 has not been enabled yet, please call pwm0_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to PWM0 (34)
pwm0_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: pwm0_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($PWM0));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to PWM0 (34)
pwm0_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($PWM0));
  cat /sys/class/gpio/gpio$PIN/value
}

## AP_EINT3 ##

# Enable exposure of the specified AP_EINT3 pin. (35)
ap_eint3_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$AP_EINT3;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified AP_EINT3 pin. (35)
ap_eint3_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$AP_EINT3;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin AP_EINT3 (35) to input or output mode
ap_eint3_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT3));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "AP_EINT3$1 has not been enabled yet, please call ap_eint3_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to AP_EINT3 (35)
ap_eint3_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: ap_eint3_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT3));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to AP_EINT3 (35)
ap_eint3_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT3));
  cat /sys/class/gpio/gpio$PIN/value
}

## TWI1_SCK ##

# Enable exposure of the specified TWI1_SCK pin. (47)
twi1_sck_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI1_SCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified TWI1_SCK pin. (47)
twi1_sck_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI1_SCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin TWI1_SCK (47) to input or output mode
twi1_sck_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SCK));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "TWI1_SCK$1 has not been enabled yet, please call twi1_sck_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to TWI1_SCK (47)
twi1_sck_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: twi1_sck_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SCK));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to TWI1_SCK (47)
twi1_sck_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SCK));
  cat /sys/class/gpio/gpio$PIN/value
}

## TWI1_SDA ##

# Enable exposure of the specified TWI1_SDA pin. (47)
twi1_sda_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI1_SDA;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified TWI1_SDA pin. (48)
twi1_sda_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI1_SDA;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin TWI1_SDA (48) to input or output mode
twi1_sda_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SDA));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "TWI1_SDA$1 has not been enabled yet, please call twi1_sda_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to TWI1_SDA (48)
twi1_sda_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: twi1_sda_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SDA));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to TWI1_SDA (48)
twi1_sda_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI1_SDA));
  cat /sys/class/gpio/gpio$PIN/value
}

## TWI2_SCK ##

# Enable exposure of the specified TWI2_SCK pin. (49)
twi1_sck_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI2_SCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified TWI2_SCK pin. (49)
twi1_sck_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI2_SCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin TWI2_SCK (49) to input or output mode
twi1_sck_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SCK));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "TWI2_SCK$1 has not been enabled yet, please call twi1_sck_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to TWI2_SCK (49)
twi1_sck_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: twi1_sck_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SCK));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to TWI2_SCK (49)
twi1_sck_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SCK));
  cat /sys/class/gpio/gpio$PIN/value
}

## TWI2_SDA ##

# Enable exposure of the specified TWI2_SDA pin. (50)
twi1_sda_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI2_SDA;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified TWI2_SDA pin. (50)
twi1_sda_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$TWI2_SDA;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin TWI2_SDA (50) to input or output mode
twi1_sda_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SDA));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "TWI2_SDA$1 has not been enabled yet, please call twi1_sda_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to TWI2_SDA (50)
twi1_sda_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: twi1_sda_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SDA));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to TWI2_SDA (50)
twi1_sda_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($TWI2_SDA));
  cat /sys/class/gpio/gpio$PIN/value
}

# Enable exposure of the specified LCD-D pins (2-7, 10-15 & 18-23)
lcd_d_enable()
{
  if [[("$1" -lt 2) || ("$1" -gt 23) && ("$1" -eq 8,9,16,17)]] ; then
    echo "Valid pins are 2-7, 10-15 & 18-23"
    return -1;
  fi
  PIN=$((96 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified LCD-D pin (2-7, 10-15 & 18-23)
lcd_d_disable()
{
  if [[("$1" -lt 2) || ("$1" -gt 23) && ("$1" -eq 8,9,16,17)]] ; then
    echo "Valid pins are 2-7, 10-15 & 18-23"
    return -1;
  fi
  PIN=$((96 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin to input or output mode
lcd_d_mode()
{
  if [[("$1" -lt 2) || ("$1" -gt 23) && ("$1" -eq 8,9,16,17)]] ; then
    echo "Valid pins are 2-7, 10-15 & 18-23"
    return -1;
  fi
  PIN=$((96 + $1));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "LCD_D$1 has not been enabled yet, please call lcd_d_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
lcd_d_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: lcd_d_write pin value"
    return -1
  fi
  if [[("$1" -lt 2) || ("$1" -gt 23) && ("$1" -eq 8,9,16,17)]] ; then
    echo "Valid pins are 2-7, 10-15 & 18-23"
    return -1;
  fi
  PIN=$((96 + $1));

  sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
lcd_d_read()
{
  if [[("$1" -lt 2) || ("$1" -gt 23) && ("$1" -eq 8,9,16,17)]] ; then
    echo "Valid pins are 2-7, 10-15 & 18-23"
    return -1;
  fi
  PIN=$((96 + $1));
  cat /sys/class/gpio/gpio$PIN/value
}

## LCD_CLK ##

# Enable exposure of the specified LCD_CLK pin. (120)
lcd_clk_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_CLK;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified LCD_CLK pin. (120)
lcd_clk_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_CLK;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin LCD_CLK (119) to input or output mode
lcd_clk_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_CLK));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "LCD_CLK$1 has not been enabled yet, please call lcd_clk_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to LCD_CLK (120)
lcd_clk_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: lcd_clk_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_CLK));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to LCD_CLK (120)
lcd_clk_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_CLK));
  cat /sys/class/gpio/gpio$PIN/value
}

## LCD_DE ##

# Enable exposure of the specified LCD_DE pin. (121)
lcd_de_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_DE;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified LCD_DE pin. (121)
lcd_de_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_DE;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin LCD_DE (121) to input or output mode
lcd_de_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_DE));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "LCD_DE$1 has not been enabled yet, please call lcd_de_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to LCD_DE (121)
lcd_de_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: lcd_de_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_DE));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to LCD_DE (121)
lcd_de_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_DE));
  cat /sys/class/gpio/gpio$PIN/value
}

## LCD_HSYNC ##

# Enable exposure of the specified LCD_HSYNC pin. (122)
lcd_hsync_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_HSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified LCD_HSYNC pin. (122)
lcd_hsync_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_HSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin LCD_HSYNC (122) to input or output mode
lcd_hsync_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_HSYNC));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "LCD_HSYNC$1 has not been enabled yet, please call lcd_hsync_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to LCD_HSYNC (122)
lcd_hsync_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: lcd_hsync_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_HSYNC));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to LCD_HSYNC (122)
lcd_hsync_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_HSYNC));
  cat /sys/class/gpio/gpio$PIN/value
}

## LCD_VSYNC ##

# Enable exposure of the specified LCD_VSYNC pin. (123)
lcd_vsync_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_VSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified LCD_VSYNC pin. (123)
lcd_vsync_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$LCD_VSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin LCD_VSYNC (123) to input or output mode
lcd_vsync_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_VSYNC));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "LCD_VSYNC$1 has not been enabled yet, please call lcd_vsync_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to LCD_VSYNC (123)
lcd_vsync_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: lcd_vsync_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_VSYNC));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to LCD_VSYNC (123)
lcd_vsync_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($LCD_VSYNC));
  cat /sys/class/gpio/gpio$PIN/value
}

## CSIPCK ##

# Enable exposure of the specified CSIPCK pin. (128)
csipck_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIPCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified CSIPCK pin. (128)
csipck_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIPCK;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin CSIPCK (128) to input or output mode
csipck_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIPCK));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "CSIPCK$1 has not been enabled yet, please call csipck_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to CSIPCK (128)
csipck_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: csipck_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIPCK));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to CSIPCK (128)
csipck_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIPCK));
  cat /sys/class/gpio/gpio$PIN/value
}

## CSICK ##

# Enable exposure of the specified CSICK pin. (129)
csick_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSICK;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified CSICK pin. (129)
csick_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSICK;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin CSICK (129) to input or output mode
csick_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSICK));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "CSICK$1 has not been enabled yet, please call csick_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to CSICK (129)
csick_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: csick_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSICK));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to CSICK (129)
csick_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSICK));
  cat /sys/class/gpio/gpio$PIN/value
}

## CSIHSYNC ##

# Enable exposure of the specified CSIHSYNC pin. (130)
csihsync_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIHSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified CSIHSYNC pin. (130)
csihsync_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIHSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin CSIHSYNC (130) to input or output mode
csihsync_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIHSYNC));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "CSIHSYNC$1 has not been enabled yet, please call csihsync_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to CSIHSYNC (130)
csihsync_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: csihsync_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIHSYNC));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to CSIHSYNC (130)
csihsync_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIHSYNC));
  cat /sys/class/gpio/gpio$PIN/value
}

## CSIVSYNC ##

# Enable exposure of the specified CSIVSYNC pin. (131)
csivsync_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIVSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified CSIVSYNC pin. (131)
csivsync_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$CSIVSYNC;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin CSIVSYNC (131) to input or output mode
csivsync_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIVSYNC));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "CSIVSYNC$1 has not been enabled yet, please call csivsync_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to CSIVSYNC (131)
csivsync_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: csivsync_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIVSYNC));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to CSIVSYNC (131)
csivsync_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($CSIVSYNC));
  cat /sys/class/gpio/gpio$PIN/value
}

# Enable exposure of the specified CSID pin (0-7)
csid_enable()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((132 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified CSID pin (0-7)
csid_disable()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((132 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin to input or output mode
csi_mode()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((132 + $1));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "CSID$1 has not been enabled yet, please call csid_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
csid_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: csid_write pin value"
    return -1
  fi
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((132 + $1));
 
  sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
csid_read()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((132 + $1));
  cat /sys/class/gpio/gpio$PIN/value
}

## AP_EINT1 ##

# Enable exposure of the specified AP_EINT1 pin. (193)
ap_ent1_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$AP_EINT1;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified AP_EINT1 pin. (193)
ap_ent1_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$AP_EINT1;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin AP_EINT1 (193) to input or output mode
ap_ent1_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT1));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "AP_EINT1$1 has not been enabled yet, please call ap_ent1_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to AP_EINT1 (193)
ap_ent1_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: ap_ent1_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT1));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to AP_EINT1 (193)
ap_ent1_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($AP_EINT1));
  cat /sys/class/gpio/gpio$PIN/value
}

## UART1_TX ##

# Enable exposure of the specified UART1_TX pin. (195)
uart1_tx_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$UART1_TX;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified UART1_TX pin. (195)
uart1_tx_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$UART1_TX;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin UART1_TX (195) to input or output mode
uart1_tx_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_TX));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "UART1_TX$1 has not been enabled yet, please call uart1_tx_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to UART1_TX (195)
uart1_tx_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: uart1_tx_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_TX));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to UART1_TX (195)
uart1_tx_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_TX));
  cat /sys/class/gpio/gpio$PIN/value
}

## UART1_RX ##

# Enable exposure of the specified UART1_RX pin. (196)
uart1_rx_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$UART1_RX;
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified UART1_RX pin. (196)
uart1_rx_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$UART1_RX;
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin UART1_RX (196) to input or output mode
uart1_rx_mode()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_RX));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "UART1_RX$1 has not been enabled yet, please call uart1_rx_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
# Writes value to UART1_RX (196)
uart1_rx_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: uart1_rx_write pin value"
    return -1
  fi
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_RX));
   sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
# Reads value to UART1_RX (196)
uart1_rx_read()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($UART1_RX));
  cat /sys/class/gpio/gpio$PIN/value
}

# Enable exposure of the specified XIO_P pin (0-7)
xio_p_enable()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((1016 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified XIO_P pin (0-7)
xio_p_disable()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((1016 + $1));
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}
# Sets the pin to input or output mode
xio_p_mode()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((1016 + $1));
  if [[ ! -d /sys/class/gpio/gpio$PIN ]] ; then
    echo "XIO_P$1 has not been enabled yet, please call xio_p_enable"
    return -1
  fi
  if [ $# -lt 2 ] ; then
    cat /sys/class/gpio/gpio$PIN/direction
  else
    MODE=""
    if [[("$2" == "in") || ("$2" == "IN")]] ; then
      MODE="in"
    elif [[("$2" == "out") || ("$2" == "OUT")]] ; then
      MODE="out"
    fi
    if [[ "$MODE" == "" ]] ; then
      echo 'Valid modes are "in" or "out"'
      return -1;
    fi
    sudo sh -c "echo $MODE > /sys/class/gpio/gpio$PIN/direction"
  fi
}
xio_p_write()
{
  if [[("$#" -lt 2)]] ; then
    echo "Usage: xio_p_write pin value"
    return -1
  fi
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((1016 + $1));
  #FIXME - Accept more than one word
  sudo sh -c "echo $2 > /sys/class/gpio/gpio$PIN/value"
}
xio_p_read()
{
  if [[("$1" -lt 0) || ("$1" -gt 7)]] ; then
    echo "Valid pins are 0-7"
    return -1;
  fi
  PIN=$((1016 + $1));
  cat /sys/class/gpio/gpio$PIN/value
}

#EOF
