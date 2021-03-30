node-red location ~/.node-red/
Installing custom package
https://nodered.org/docs/user-guide/runtime/adding-nodes

# Node build and deployment

1. Build "npm pack"
2. Copy to server: "scp -P 2022 node-red-contrib-komfovent-0.3.3.tgz root@ampio:/root/custom"
3. Login to server: "ssh root@ampio -p 2022"
4. Go to location where the file was copied: "cd /root/custom"
5. Untar: "mkdir -p node-red-contrib-komfovent && tar -zxvf node-red-contrib-komfovent-0.3.3.tgz -C node-red-contrib-komfovent --strip-components=1"
6. "cd node-red-contrib-komfovent && npm link"
7. Go to node red home location: "cd ~/.node-red/ && npm link node-red-contrib-komfovent"
8. node-red-restart

https://medium.com/dailyjs/how-to-use-npm-link-7375b6219557
https://nodered.org/docs/user-guide/runtime/adding-nodes