#!/bin/bash
FILES=*728x90*

cd Submitted

for f in $FILES
do
  printf "https://ninjatrader.com/VendorAds/728x90/$f\n"  >> ../links.txt
done
