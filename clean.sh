#! /bin/bash

docker stop zigbee2mqtt
sleep 1

docker rm zigbee2mqtt
sleep 1

docker rmi koenkk/zigbee2mqtt:arm32v6-dev

rm -rf data
mkdir data
cp *.yaml data/


./run.sh

docker logs -f zigbee2mqtt

