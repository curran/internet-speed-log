# internet-speed-log
Utility for logging internet speed.

Assuming an Ubuntu environment.

```
sudo apt install speedtest-cli
crontab -e
```
Paste the following (replacing `curran/repos` with your path):

```
*/10 * * * * /home/curran/repos/internet-speed-log/logSpeed.sh
```

You should get a log file `speedLog.txt` in your home directory that updates every 10 minutes.
