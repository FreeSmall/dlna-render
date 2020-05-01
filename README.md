<h1><font color=Blue>  This is a dlna renderer for linux all platform based ubuntu, <br>
This can stream audio, stetup a wifi Audio Equitment, like HomePod </font><br></h1>


### If you have any question, welcome to contact with me:  <font color=Red>`pzhaoyang@gmail.com`</font>

# Docker Command:
## Only `host` module:
#### The  content of `< xxx >` your should replaced to your owns.
```
docker run -d \
--name <container name> \
-e UPNP_DEVICE_NAME=<dlna renderer name> \
--net=host \
--device /dev/snd:/dev/snd \
 --restart unless-stopped \
freesmall/dlna-render
```
Comment:
  The line `-e UPNP_DEVICE_NAME=<dlna renderer name>`  can be remove the it will use name `HomePod-$(hostname)` by default.
