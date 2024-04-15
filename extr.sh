#!/bin/bash

awk -F': ' '/distance:|frequency:/ {w=w"   "$2 }; /^[0-9. ]+$/ { w=w"   "$2 };
              /^[[:blank:]]*$/ || eof {if (w) {gsub(/,/,"",w);print w;w="   "}}' band.yaml > phband.dat
echo " done"


echo "I added this line in cloud"
