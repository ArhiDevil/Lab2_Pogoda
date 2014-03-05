#!/bin/bash
cat config > sleeptime
while true
do
curl  -s  'http://http://meteo.by' > pogoda
grep -m 1 '<p class="t ">' pogoda > temp
echo  $(sed 's/[^\-\+0-9]//g' temp)
rm -r temp pogoda
sleep sleeptime
done