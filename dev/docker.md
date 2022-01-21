# Docker

## Useful links

-   Setting up Docker on Pi: https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl
-   Backup: https://github.com/offen/docker-volume-backup#docker-volume-backup
-   Best practices: https://www.youtube.com/watch?v=8vXoMqWgbQQ
    -   BP 1: Use official and verified Docker Images as Base Image
    -   BP 2: Use Specific Docker Image Versions
    -   BP 3: Use Small-Sized Official Images
    -   BP 4: Optimize Caching Image Layers
    -   BP 5: Use .dockerignore file
    -   BP 6: Make use of Multi-Stage Builds
    -   BP 7: Use the Least Privileged User
    -   BP 8: Scan your Images for Security Vulnerabilities

## Useful commands

-   Up the containers: `docker-compose -p home-automation up -d`
-   List running containers: `docker ps`
-   Display the most recent logs: `docker logs home-automation_backup_1 --tail=10`
-   Start container: `docker container start grafana`
-   Stop container: `docker stop grafana`
-   Remove all volumes: `docker volume rm $(docker volume ls -q)`
-   Run command in a container as root: `docker exec -u root -t -i grafana /bin/bash -c 'chown grafana:root /var/lib/grafana/grafana.db'`
-   Build my-node-red image: `docker build -t kadzaa/private:latest .`
-   Deploy my-node-red image: `docker push kadzaa/private:latest`
-   Create context: `docker context create wyse --docker host=ssh://luke@192.168.1.170`
-   List contexts: `docker context ls`
-   Pull images on remote host: `docker-compose --context wyse -p home-automation pull`
-   Deploy on remote host: `docker-compose --context wyse -p home-automation up -d`
-   Run backup manually: `docker exec backup backup`
-   Run single container: `docker-compose -p home-automation up -d backup`

## Docker remote host
- Ssh key: https://www.digitalocean.com/community/tutorials/how-to-configure-ssh-key-based-authentication-on-a-linux-server
- Troubleshooting non working docker compose ssh: https://stackoverflow.com/questions/61524982/ssh-agent-forwarding-into-docker-compose-environment-is-not-working
- Docker compose on remote host: https://www.docker.com/blog/how-to-deploy-on-remote-docker-hosts-with-docker-compose/
- Push image to private repository: https://stackoverflow.com/questions/28349392/how-to-push-a-docker-image-to-a-private-repository
- Access to private repositories: https://www.baeldung.com/linux/docker-compose-private-repositories