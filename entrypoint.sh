#!/bin/sh

export MINIO_HOST_IP=$(/sbin/ip route|awk '/default/ { print $3 }')
echo "MINIO_HOSt_IP:" $MINIO_HOST_IP

mc config host add minio http://$MINIO_HOST_IP:9000 nibz78 ?Nitram78250
#mc ls minio
mc mirror --quiet -w --force --remove /backup minio/docker-volume-mysql



