# Recuperation integration

## Points
* Automatically control fan speed based on the conditions
    * number of people at home (no one, family, party)
    * hour
* Graph with basic recuperation unit parameters
    * supply fan speed
    * exhaust fan speed
    * supply flow
    * exhaust flow
    * filter clogging
* Filter clogging alert
* Switch mode from within the Ampio app

## Approach
When integrating the Komvoent [Domekt R 450 V recuperator][1] with a home automation system, there are two straight forward options to consider:
1. [modbus][2]
2. http

I decided to go for option two, as it didn't require any additional hardware. There is an issue with the approach, there isn't any official Web API exposed. The good thing though is that there is a web app and the communication with the unit isn't secured, so using Chrome dev tools you could easily sniff the traffic and retrieve the necessary payloads.
As it turned out I wasn't the only one that thought about solving the problem this way and I came across the [node-red-contrib-komfovent][3]. Kudos two the authors as they did all the hard work for me :).

I found couple of minor issues that prevented me from using the node and as the project is no longer supported I fixed them on my branch: https://github.com/kadza/node-red-contrib-komfovent

## Results



[1]: <https://www.ventia.pl/pl/produkty/centrale-wentylacyjne-komfovent-ventia/centrale-wentylacyjne-rekuperatury-Komfovent-DOMEKT-VENTIA/centrale-wentylacyjne-Komfovent-domekt-wymiennik-obrotowy-VENTIA/centrala-wentylacyjna-komfovent-domekt-r-450v-wymiennik-obrotowy-ventia/> "Domekt R 450 V recuperator"
[2]: <https://en.wikipedia.org/wiki/Modbus> "modbus"
[3]: <https://github.com/ksvan/node-red-contrib-komfovent> "node-red-contrib-komfovent"