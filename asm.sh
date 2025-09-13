#!/bin/bash
#Save the argument, for example: hello.asm
file=$1

#Divide the string on two strings delimited by the point
fileSplit=(${file//./ })

#Here the name of the file, test
name=${fileSplit[0]}

#Here the extension, asm
ext=${fileSplit[1]}

#hello.asm
complete="${name}.${ext}"

sjasmplus --raw=dskasm/hello.bin hello.asm

./openmsx_asm.sh
