# Ampio customized node-red node

## Context
When integrating the Komvoent [Domekt R 450 V recuperator][1] with a home automation system, there are at least two options to consider:
1. [modbus][2]
2. http

I decided to go for option two, as it didn't require any additional hardware and I could integrate it programatically.
The problem with http integration was that there isn't and Web API exposed. The good thing is there is a mobile app and a web app, so I could sniff the traffic and retrieve the necessary payloads. The mobile app requires internet connection and the Web app doesn't, so the choice was obvious.
As it turned out I wasn't the only one that thought about solving the problem this way and I came across the [node-red-contrib-komfovent][3]. Kudos two the authors as they did all the hard work for me :).

I found an issue with displaying the config node, which was opening and immediately closing. Obviously it made the node impossible to use. As the repo is not maintained I had two solve the issue.

## Code changes
I was suprised with the quality of the documentation as is it's really high. Beside the bug fix I fixed two things as that impact disk usage by the node installation. It might be usefull othe time so I mention it:
* I moved dev dependencies that were inside of dependencies secion in packag.json to dev dependencies seciotn
* I added .npm ignore to not include the unecessary files in the npm package

## Build

## Deployment
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





[1]: <https://www.ventia.pl/pl/produkty/centrale-wentylacyjne-komfovent-ventia/centrale-wentylacyjne-rekuperatury-Komfovent-DOMEKT-VENTIA/centrale-wentylacyjne-Komfovent-domekt-wymiennik-obrotowy-VENTIA/centrala-wentylacyjna-komfovent-domekt-r-450v-wymiennik-obrotowy-ventia/> "Domekt R 450 V recuperator"
[2]: <https://en.wikipedia.org/wiki/Modbus> "modbus"
[3]: <https://github.com/ksvan/node-red-contrib-komfovent> "node-red-contrib-komfovent"