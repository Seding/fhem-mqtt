#!/bin/bash

if [ ! -f /opt/fhem/fhem.cfg ]; then
wget http://fhem.de/fhem-5.8.deb -O /opt/fhem-5.8.deb
useradd --system --home /opt/fhem --gid dialout --uid 1000 --shell /bin/false fhem
dpkg -i /opt/fhem-5.8.deb
rm -rf /opt/fhem-5.8.deb
fi

chown -R fhem:dialout /opt/fhem
cd /opt/fhem
perl fhem.pl fhem.cfg
