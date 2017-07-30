#!/usr/bin/env bash
echo "{\
  \"SSID\": \"`/sbin/iwgetid -r`\",\
  \"date\": \"`date --iso-8601=minutes`\",\
  \"speedtest\": `speedtest-cli --json | sed -En "s/Cannot retrieve speedtest configuration/\\"Cannot retrieve speedtest configuration\\"/p"`\
}" >> speedLog.txt
