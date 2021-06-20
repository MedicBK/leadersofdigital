#!/usr/bin/env bash

SRV_NAME=medex
NET_NAME=srvnetwork 
IN_PORT=8080
OUT_PORT=9214

if [ "$(docker service ls -q -f name=${SRV_NAME})" ]; then
  docker service rm ${SRV_NAME}
fi

docker service create \
--name ${SRV_NAME} \
--network ${NET_NAME} \
-p ${OUT_PORT}:${IN_PORT} \
--constraint 'node.labels.srvname == bots' \
com.medicbk/medex
