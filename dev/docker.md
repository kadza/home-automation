# Docker
* Setting up Docker on Pi: https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl
* sudo docker container start influxdb
* sudo docker container start grafana
* Backup: https://danielbkr.net/automating-docker-volume-backups/

sudo tar -zxvf grafana-04-23-21-21-33-16-BACKUP.tar.gz
sudo rm -Rf /var/snap/docker/common/var-lib-docker/volumes/home-automation_influxdb-storage
sudo mv home-automation_influxdb-storage/ /var/snap/docker/common/var-lib-docker/volumes