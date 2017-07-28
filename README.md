# internet-speed-log
Utility for logging internet speed.

Assuming an Ubuntu environment.

```
sudo apt install speedtest-cli
crontab -e
```
Paste the following (replacing `curran/repos` with your path):

```
* * * * * /home/curran/repos/internet-speed-log/logSpeed.sh
```

You should get a log file in your home directory.
