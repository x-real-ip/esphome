https://github.com/Laxilef/OTGateway/wiki#quick-start

1. Flash Wemos D1 mini with the firmware

```bash
sudo esptool write_flash --erase-all 0x0 ./firmware_d1_mini_1.5.1.bin
```

2. Flash Wemos D1 Mini with filesystem

```bash
sudo esptool write_flash 0x300000 ./filesystem_d1_mini_1.5.1.bin
```


