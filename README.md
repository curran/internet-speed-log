# internet-speed-log
Utility for logging internet speed.

Have you ever signed up for "fast" Internet, only to be disappointed? This project allows you to monitor the speed of your ISP automatically, every 10 minutes, so you can have some concrete evidence to back up your claims of slow Internet, or unreliable service.


## Usage

Assuming an Ubuntu environment.

```
sudo apt install speedtest-cli
crontab -e
```

Paste the following (replacing `curran/repos` with your path):

```
*/10 * * * * /home/curran/repos/internet-speed-log/logSpeed.sh
```

You should get a log file `speedLog.ndjson` in your home directory that updates every 10 minutes.

Sample output (`speedtest.download` is in units of bits/second, so a value of 864211 means 0.86 Megabits Per Second (Mbps)):

```json
{  "SSID": "railwire...wifi",  "date": "2017-07-30T19:10+05:30",  "speedtest": {"download": 864211.805456104, "timestamp": "2017-07-30T13:40:02.817362", "ping": 72.97, "upload": 883402.1529892767, "server": {"latency": 72.97, "name": "Nagpur", "url": "http://in2ngp.in2cable.com/speedtest/upload.aspx", "country": "India", "lon": "79.0882", "cc": "IN", "host": "in2ngp.in2cable.com:8080", "sponsor": "In2cable", "url2": "http://in2ngp2.in2cable.com/speedtest2/upload.aspx", "lat": "21.1458", "id": "10426", "d": 241.60284257974826}}}
{  "SSID": "railwire...wifi",  "date": "2017-07-30T19:20+05:30",  "speedtest": {"download": 913522.7755777026, "timestamp": "2017-07-30T13:50:01.926302", "ping": 55.701, "upload": 1112180.3452090083, "server": {"latency": 55.701, "name": "Nagpur", "url": "http://speedtest.orangeinfocom.in/speedtest/upload.php", "country": "India", "lon": "79.0882", "cc": "IN", "host": "speedtest.orangeinfocom.in:8080", "sponsor": "Orange Infocom Pvt Ltd", "lat": "21.1458", "id": "11860", "d": 241.60284257974826}}}
{  "SSID": "railwire...wifi",  "date": "2017-07-30T19:30+05:30",  "speedtest": {"download": 858036.3433057134, "timestamp": "2017-07-30T14:00:03.260556", "ping": 56.494, "upload": 1044297.6150799796, "server": {"latency": 56.494, "name": "Nagpur", "url": "http://in2ngp.in2cable.com/speedtest/upload.aspx", "country": "India", "lon": "79.0882", "cc": "IN", "host": "in2ngp.in2cable.com:8080", "sponsor": "In2cable", "url2": "http://in2ngp2.in2cable.com/speedtest2/upload.aspx", "lat": "21.1458", "id": "10426", "d": 241.60284257974826}}}
```

Sample output when Internet is not working:

```
{  "SSID": "railwire...wifi",  "date": "2017-07-31T10:00+05:30",  "speedtest": "Cannot retrieve speedtest configuration"}
```
