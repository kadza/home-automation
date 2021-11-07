#!/bin/bash

# Download backup from AWS
# Stop containers
# Start containers
# Why home-automation in volume name?

cd "$(dirname "$0")"
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