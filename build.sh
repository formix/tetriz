#!/bin/bash

mkdir -p out
zasm -uyw tetriz.z80 -o out/a.out
if [ $? -eq 0 ]; then
    cat out/a.out > /dev/ttyUSB0
else
    >&2 echo "BUILD FAILED"
fi

