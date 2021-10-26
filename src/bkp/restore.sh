#!/bin/bash

# Download backup from AWS
# Stop containers
# Start containers
# Why home-automation in volume name?

cd "$(dirname "$0")"
mkdir tmp
tar -C ./tmp -xvf ./data/backup.tar.gz

docker run -id --name influxdb_restore -v home-automation_influxdb-storage:/influxdb_restore alpine
docker cp ./tmp/backup/influxdb-backup/. influxdb_restore:/influxdb_restore
docker stop influxdb_restore
docker rm influxdb_restore

docker run -d --name grafana_restore -v home-automation_grafana-storage:/grafana_restore alpine
docker cp ./tmp/backup/grafana-backup/. grafana_restore:/grafana_restore
docker stop grafana_restore
docker rm grafana_restore
docker exec -u root -t -i grafana /bin/bash -c 'chown grafana:root /var/lib/grafana/grafana.db'

rm -Rf ./tmp