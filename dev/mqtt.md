# MQTT aliases

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
