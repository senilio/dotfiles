#!/bin/bash

sudo su -c "echo 1  >/sys/devices/platform/applesmc.768/fan1_manual"
sudo su -c "echo $1 >/sys/devices/platform/applesmc.768/fan1_output"
