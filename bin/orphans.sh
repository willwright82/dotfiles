#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please supply path to search under"
    exit 1
fi
MYPATH=$1
BASEPATH=$2

find "$MYPATH" -name *.jpg > /tmp/patterns
find "$MYPATH" -name *.png >> /tmp/patterns
find "$MYPATH" -name *.gif >> /tmp/patterns

for p in $(cat /tmp/patterns); do
    f=$(basename $p);
    #echo "Checking "$f" in "$BASEPATH;
    #ag -R $f "$BASEPATH" > /dev/null || rm -riv "/Users/will/Dev/clazzoo/"$p;
    ag -R $f "$BASEPATH" > /dev/null || mv -i "/Users/will/Dev/clazzoo/"$p "/Users/will/Design/backup/indev/images"$p;
done
