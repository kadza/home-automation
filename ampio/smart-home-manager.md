---
title: /smart-home-manager
layout: page
permalink: /ampio/smart-home-manager
---

# SmartHomeManager
## Download
[Ampio Smart home manager][1]

## Run on MacOS
Exception in thread "main" java.lang.NoClassDefFoundError: javafx/scene/image/Image
	at smarthomemanager.SmartHomeManager.wczytaj_stale(SmartHomeManager.java:129)
	at smarthomemanager.SmartHomeManager.main(SmartHomeManager.java:246)
Caused by: java.lang.ClassNotFoundException: javafx.scene.image.Image
	at java.net.URLClassLoader.findClass(URLClassLoader.java:382)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:418)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:352)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:351)
	... 2 more

* [Download][2] install and configure JDK 11
* [Download][3] install and configure JavaFX
* Run: ```shell java --module-path $FX_PATH --add-modules javafx.controls -jar /Users/lkujawia/dev/ampio/SmartHomeManager/SmartHomeManager.jar ```

## Add button that triggers url execution

[1]: <https://ampio.pl/strefa-instalatora/konfigurator-serwera-ip-mac/> "Smart home manager download"
[2]: <https://adoptopenjdk.net/?variant=openjdk11&jvmVariant=hotspot> "jdk"
[3]: <https://gluonhq.com/products/javafx/> "javafx"