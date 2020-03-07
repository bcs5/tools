#!/bin/bash
shopt -s nullglob

arr=(part-*.csv)

first=${arr[0]}

final=$1.csv

head -1 $first > $final

for filename in $arr; do sed 1d $filename >> $final; done
