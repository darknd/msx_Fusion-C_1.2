#!/bin/bash
#Save the argument, for example: test.c
file=$1

#Divide the string on two strings delimited by the point
fileSplit=(${file//./ })

#Here the name of the file, test
name=${fileSplit[0]}

#Here the extension, c
ext=${fileSplit[1]}

#test.c
complete="${name}.${ext}"


sdcc --code-loc 0x106 --data-loc 0x0 --disable-warning 196 -mz80 --no-std-crt0 --opt-code-size fusion.lib -L ./fusion-c/lib/ ./fusion-c/include/crt0_msxdos.rel $complete

hex2bin -e com $name.ihx

mv $name.com dsk/

rm -f *.com *.asm *.lst *.sym *.bin *.ihx *.lk *.map *.noi *.rel *.mem *.rst

./openmsx_start.sh
