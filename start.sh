#! /bin/bash

docker stop zigbee2mqtt
sleep 5

docker rm zigbee2mqtt
sleep 1

rm -rf data/log

./run.sh

docker logs -f zigbee2mqtt

