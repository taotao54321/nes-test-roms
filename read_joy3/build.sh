#!/bin/sh

( cd src && ./build.sh )

for i in src/*.o; do
  i=$(basename $i)
  ld65 -C src/nes.cfg -o bin/${i%.o}.nes src/$i
done
