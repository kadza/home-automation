sudo docker stop backup
sudo docker rm backup
sudo docker-compose -p home-automation up -d backup
sudo docker exec backup backup
On host: scp [remote-login]@[remote-host]:/[pathToFile]/backup.tar.gz ./backup.tar.gz
On host: upload manually to S3
restore.sh works
