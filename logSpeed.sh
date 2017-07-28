echo "{ \"SSID\": \"`iwgetid -r`\" }" >> speedLog.txt
speedtest-cli --json >> speedLog.txt
