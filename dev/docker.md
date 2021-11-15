# Docker
* Setting up Docker on Pi: https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl
* Backup: https://github.com/offen/docker-volume-backup#docker-volume-backup

## Useful commands
* sudo docker-compose up -d
* sudo docker ps
* sudo docker logs home-automation_backup_1 --tail=10
* sudo docker container start influxdb
* sudo docker container start grafana
* sudo docker stop home-automation_backup_1
* Remove all volumes: docker volume rm $(docker volume ls -q)
* Run command in a container as root: docker exec -u root -t -i grafana /bin/bash -c 'chown grafana:root /var/lib/grafana/grafana.db'
* Build my-node-red image: docker build -t my-node-red .