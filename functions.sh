#!/bin/bash

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

#EOF
