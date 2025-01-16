#!/bin/bash

#esptool.py -p $1 erase_flash
#sleep 5
esptool.py -p $1 --baud 460800 write_flash -fs 32m -ff 80m 0x00000 boot_v1.7.bin 0x3FE000 blank.bin 0x3FC000 esp_init_data_default.bin 0x01000 user1.bin
