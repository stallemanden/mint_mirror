# Linux Mint Mirror Dockerized

Very simple docker container for setting up a mirror of Linux Mint.

https://linuxmint.com/mirrors.php

The container can be setup to mirror either ISO's, Packages or both.

## What does it do
Depending on the setup, the container will initiate a RSYNC of the available mirrors.

The following schedule wil apply

```
Syncornization of Packages:
Daily at 00:00 and 12:00
```

```
Syncornization of ISOs:
Daily at 01:00
```

## CAUTION
As mentioned on https://linuxmint.com/mirrors.php takes up some space.

According to the site, the Mirror (ISOs) will take up about 200 GB, where as the Packages should take up 25 GB.
However, during testing, Packages took up around 36 GB, so it might be safe to assume, that ISOs will also takeup more than 200 GB.

## Where is it?
Once the Container is started, it will give:

You will find the packages at: http://localhost/packages

You will find the ISOs at: http://localhost/mirror

# Configuration

There are two Environment Variables that can be set.

For setting up a mirror of Packages, set:
```
SYNC_PACKAGES = true
```

For setting up a mirror of ISOs
```
SYNC_MIRROR = true
```

Default values are:
```
SYNC_MIRROR = false
SYNC_PACKAGES = true
```

# ToDo
- Add the ability to customize schedule
- Add a simple status page