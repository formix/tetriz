#!/bin/bash

mkdir -p out
zasm -uyw core.z80 -o out/tetriz.bin   
if [ $? -eq 0 ]; then
    cat out/tetriz.bin > /dev/ttyUSB0
else
    >&2 echo "BUILD OF core.z80 FAILED"
fi

