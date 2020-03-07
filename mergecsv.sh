#!/bin/bash -e
shopt -s nullglob

arr=(part-*.csv)

first=${arr[0]}
final=$1.csv

for filename in "${arr[@]}";
do
  if [ -s $filename ];
  then
    first=$filename
  fi
done

echo $first

head -1 $filename > $final

for filename in "${arr[@]}"; do sed 1d $filename >> $final; done
