# fhem-mqtt
This is a docker image based on phusion/baseimage with some added packages for Fhem with MQTT support

## Usage

```
docker run -d \
--name=fhem \
-v /<your>/<local>/<fhem>:/opt/fhem -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro \
-p 8083:8083 \
--device=/dev/ttyACM0 \
firex2/fhem-mqtt
```

if you want to use persistant config, remember to use a Volume to a local directory :)