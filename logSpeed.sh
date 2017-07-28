#!/usr/bin/env bash
echo "{ \"SSID\": \"`/sbin/iwgetid -r`\" }" >> speedLog.txt
speedtest-cli --json >> speedLog.txt
