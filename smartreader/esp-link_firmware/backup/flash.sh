#!/bin/bash

esptool.py -p $1 erase_flash
sleep 1
esptool.py -p $1 --baud 230400 write_flash --flash_mode dio -fs 32m -ff 40m 0x00000 boot_v1.7.bin 0x3FE000 blank.bin 0x3FC000 esp_init_data_default.bin 0x01000 user1.bin
screen $1 115200
