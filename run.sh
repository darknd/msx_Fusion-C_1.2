sdcc --code-loc 0x106 --data-loc 0x0 --disable-warning 196 -mz80 --no-std-crt0 --opt-code-size fusion.lib -L ./fusion-c/lib/ ./fusion-c/include/crt0_msxdos.rel test.c
hex2bin -e com test.ihx
mv test.com dsk/
rm -f *.com *.asm *.lst *.sym *.bin *.ihx *.lk *.map *.noi *.rel *.mem *.rst
./openmsx_start.sh
