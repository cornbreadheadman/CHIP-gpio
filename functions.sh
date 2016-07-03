#!/bin/bash

# Enable exposure of the specified PWM0 pin. (34)
pwm0_enable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($PWM0));
  sudo sh -c "echo $PIN > /sys/class/gpio/export"
}
# Disables exposure of the specified PWM0 pin. (34)
pwm0_disable()
{
  if [[("$1" -ne 0)]] ; then
    echo "Valid pins are 0"
    return -1;
  fi
  PIN=$(($PWM0));
  sudo sh -c "echo $PIN > /sys/class/gpio/unexport"
}

#EOF
