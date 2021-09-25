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

# Debug

1. Install node-red
2. Run it one time so that .node-red folder is generated
3. Install own node...
4. cd /Users/[username]/.node-red
5. npm install /[path_to_custom_node]
6. Open VS code & "open folder" created on step 2 e.g. /Users/[username]/.node-red
7. Add following configuration to vscode launch.json (press CTRL+SHIFT+P then type launch.json)
```
{
    "version": "0.2.0",
    "configurations": [

      {
        "type": "node",
        "request": "launch",
        "name": "Launch Node-red",
        "program": "/Users/[username]/.nvm/versions/node/v14.16.1/lib/node_modules/node-red/red.js",
        "runtimeArgs": ["--preserve-symlinks", "--experimental-modules"],
        "env": {
          "NO_UPDATE_NOTIFIER": "1"
        }
      },
      {
        "type": "node",
        "request": "launch",
        "name": "Debug Current File",
        "program": "${file}"
      },
      { "type": "node", "request": "attach", "name": "Attach to Process", "processId": "${command:PickProcess}" }

    ]
  }
```
8. Select "Launch Node-red" from the debug drop down & press F5

## Notes
* "*NO_UPDATE_NOTIFIER": "1" Without this, node-red takes over 3 minute startup (corporate proxy issue) /n
* --preserve-symlinks because npm install c:\folder\my_node creates a symlink & debug points wont stop on your .js code without it
* https://discourse.nodered.org/t/how-to-proper-debug-custom-node/9308/13