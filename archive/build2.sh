#!/bin/bash

mkdir -p out
zasm -uyw tetriz2.z80 -o out/tetriz2.bin   
if [ $? -eq 0 ]; then
    cat out/tetriz2.bin > /dev/ttyUSB0
else
    >&2 echo "BUILD 2 FAILED"
fi

