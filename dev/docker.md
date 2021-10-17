# Docker
* Setting up Docker on Pi: https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl
* Backup: https://github.com/offen/docker-volume-backup#docker-volume-backup

sudo tar -zxvf grafana-04-23-21-21-33-16-BACKUP.tar.gz
sudo rm -Rf /var/snap/docker/common/var-lib-docker/volumes/home-automation_influxdb-storage
sudo mv home-automation_influxdb-storage/ /var/snap/docker/common/var-lib-docker/volumes
sudo chmod 777 -R /var/snap/docker/common/var-lib-docker/volumes/home-automation_influxdb-storage

## Useful commands
* sudo docker container start influxdb
* sudo docker container start grafana
* sudo docker-compose up -d
* sudo docker ps
* sudo docker logs home-automation_backup_1 --tail=10
* sudo docker stop home-automation_backup_1