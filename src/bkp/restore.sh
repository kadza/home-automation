#!/bin/bash

# aws cli must be installed
# Why home-automation in volume name?

cd "$(dirname "$0")"

set -o allexport; source ../.env; set +o allexport
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
FILE="$(aws s3 ls $AWS_S3_BUCKET_NAME --recursive | sort | tail -n 1 | awk '{print $4}')"
aws s3 cp s3://$AWS_S3_BUCKET_NAME/$FILE ./data/backup.tar.gz

mkdir tmp
tar -C ./tmp -xvf ./data/backup.tar.gz

#IMPORTANT Check the volume name with: docker volume ls
docker run -id --name influxdb_restore -v home-automation_influxdb-storage:/influxdb_restore alpine
docker cp ./tmp/backup/influxdb-backup/. influxdb_restore:/influxdb_restore
docker stop influxdb_restore
docker rm influxdb_restore

docker compose -p home-automation up -d

# In order to set permissions correctly we need to start Grafana first, copy the files, set appropriate persmissions and restart Grafana
# https://github.com/moby/moby/issues/25977
docker run -d --name grafana_restore -v home-automation_grafana-storage:/grafana_restore alpine
docker cp ./tmp/backup/grafana-backup/. grafana_restore:/grafana_restore
docker stop grafana_restore
docker rm grafana_restore

# Don't know why this line is necessary
docker start grafana
docker exec -u root -t -i grafana /bin/bash -c 'chown grafana:root /var/lib/grafana/grafana.db'
docker restart grafana

rm -Rf ./tmp