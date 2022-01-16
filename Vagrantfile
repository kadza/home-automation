Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.network "forwarded_port", guest: 1880, host: 1880, host_ip: "127.0.0.1", id: "node-red"
    config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1", id: "grafana"
    config.vm.provision :docker
    config.vm.provision "shell", inline: "cat /vagrant/password.txt | docker login --username kadzaa --password-stdin"
    config.vm.provision :docker_compose,
        yml: "/vagrant/src/docker-compose.yaml",
        run: "always",
        compose_version: "1.29.2",
        project_name: "home-automation"
  end