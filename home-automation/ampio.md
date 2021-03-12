# Docker
Setting up Docker on Pi: https://dev.to/rohansawant/installing-docker-and-docker-compose-on-the-raspberry-pi-in-5-simple-steps-3mgl
docker rm --force redis
sudo docker container start influxdb &
# Charts

https://gabrieltanner.org/blog/grafana-sensor-visualization

I had to reconfigure hostnames inside of telegraf.conf to be in line with https://docs.docker.com/compose/networking/

## MQTT

http://mqtt-explorer.com/
https://github.com/seblucas/mqtt_forwarder
https://mosquitto.org/man/mosquitto-conf-5.html
https://www.eclipse.org/lists/mosquitto-dev/msg01729.html

[12:51] KUJAWIAK Lukasz
    jak ampio wystaiwa mqtt
​[12:51] KUJAWIAK Lukasz
    to topici mapuja sie na fizyczne urzadzenia
​[12:51] KUJAWIAK Lukasz

​[12:51] KUJAWIAK Lukasz
    przekaznik/stan/czujnik temperatury
​[12:52] KUJAWIAK Lukasz
    a ja chcialbym miec logiczne topici
​[12:52] KUJAWIAK Lukasz
    np dom/sypialnia/swiatlo
[12:52] KUJAWIAK Lukasz
    i spodziewalem sie ze bede mogl w jakis sposob mapowac topici przy uzyciu mqtt
​[12:53] KUJAWIAK Lukasz
    sa opcje ale ..
​[12:53] KUJAWIAK Lukasz
    mozesz wystawic mqttbridge, ktory bedzie klientem i borkerem
​[12:53] KUJAWIAK Lukasz
    ai mozesz zrobi remapping, ale tylko poddrzewa
​[12:53] KUJAWIAK Lukasz
    mozesz dorzucac prefiksy
​[12:54] KUJAWIAK Lukasz
    wiec mnie to nie urzadza
​[12:54] KUJAWIAK Lukasz
    w mqtt v5 doszly aliasy
​[12:54] KUJAWIAK Lukasz
    ale te aliasy sa podobno po to zeby nazwy topicow byly krotsze i zeby lepiej hulało
​[12:55] KUJAWIAK Lukasz
    trzecie znalazlem skrypcik ktory forwarduje z jednego mqtt na drugiego ze zmiana topica
​[12:55] KUJAWIAK Lukasz
    ale sklaniam sie ku 4 opcji i to mapwoanie zrobie w node-red
[12:57] KUJAWIAK Lukasz
    a de facto nie bede musial, bo ampio wrzuca juz logiczny podzial tu
​[12:57] KUJAWIAK Lukasz

​[12:57] KUJAWIAK Lukasz
    wiec i mam id urzadzenia i to jak sobie opisalem wyjscie


## InfluxDb

## Grafnana


When configuring influxdb data source use acess server default and provide db addres that's accessible from the grafan server.
http://influxdb:8086

# Ampio

ssh port 2022
ssh root@ampio -p 2022

## SmartHomeManager

https://ampio.pl/strefa-instalatora/konfigurator-serwera-ip-mac/

### Issues
Exception in thread "main" java.lang.NoClassDefFoundError: javafx/scene/image/Image
	at smarthomemanager.SmartHomeManager.wczytaj_stale(SmartHomeManager.java:129)
	at smarthomemanager.SmartHomeManager.main(SmartHomeManager.java:246)
Caused by: java.lang.ClassNotFoundException: javafx.scene.image.Image
	at java.net.URLClassLoader.findClass(URLClassLoader.java:382)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:418)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:352)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:351)
	... 2 more

* Install and configure jdk 11 https://adoptopenjdk.net/?variant=openjdk11&jvmVariant=hotspot
* Install and configure java fx https://gluonhq.com/products/javafx/
* Run: java --module-path $FX_PATH --add-modules javafx.controls -jar /Users/lkujawia/dev/ampio/SmartHomeManager/SmartHomeManager.jar


## Node-Red
node-red location ~/.node-red/
Installing custom package
https://nodered.org/docs/user-guide/runtime/adding-nodes

npm-pack

scp -P 2022 node-red-contrib-komfovent-0.3.3.tgz root@ampio:/root/custom
tar -zxvf file_name.tar.gz