#!/bin/sh -x

for i in *.s; do
  ca65 --feature force_range -I common -o ${i%.s}.o $i
done
