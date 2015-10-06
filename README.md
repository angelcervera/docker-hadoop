# Hadoop (Single Node) with Docker from scratch.

[![DockerPulls](https://img.shields.io/docker/pulls/angelcervera/docker-hadoop.svg)](https://registry.hub.docker.com/u/angelcervera/docker-hadoop/)
[![DockerStars](https://img.shields.io/docker/stars/angelcervera/docker-hadoop.svg)](https://registry.hub.docker.com/u/angelcervera/docker-hadoop/)

With [this image](https://hub.docker.com/r/angelcervera/docker-hadoop/), you will have a **Hadoop 2.7.1 Single Node** container ready for development / testing / debug porpuse.

## For impatient people.
The first time, will take few minutes downloading the image.

### To start the container (very impatient people).
```
docker run --name hadoop-2.7.1 -it -P angelcervera/docker-hadoop:2.7.1-single
```
After this, you will be inside of the hadoop docker container terminal.

Basically:
- Hadoop installation folder : **/opt/hadoop**
- Hadoop tmp folder (data folder) : **/var/lib/hadoop**
- Hadoop config folder : **/opt/hadoop/etc/hadoop**

If you want to execute a hadoop example, for example:
```
/opt/hadoop/bin/hadoop jar /opt/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar pi 16 100000
```

### To start the container (no so much impatient).
**Where "username", put your username :)**
```
mkdir /home/username/hadoop
docker run --name my-new-hadoop-2.7.1 \
  -v /home/username/hadoop/logs:/opt/hadoop/logs \
  -v /home/username/hadoop/data:/var/lib/hadoop \
  -v /home/username/hadoop/shared:/root/shared \
  -p 50070:50070 \
  -p 50075:50075 \
  -p 50060:50060 \
  -p 50030:50030 \
  -p 19888:19888 \
  -p 10033:10033 \
  -p 8032:8032 \
  -p 8030:8030 \
  -p 8088:8088 \
  -p 8033:8033 \
  -p 8042:8042 \
  -p 8188:8188 \
  -p 8047:8047 \
  -p 8788:8788 \
  -it angelcervera/docker-hadoop:2.7.1-single
```
After this, you will be inside of the hadoop docker container terminal.

Basically:
- Hadoop tmp folder (data folder) is in **/var/lib/hadoop** but you can access throw your mapped local folder **/home/username/hadoop/data**
- Hadoop logs folder is in **/opt/hadoop/logs** but you can access throw your mapped local folder **/home/username/hadoop/logs**
- Useful folder to share files: **/root/shared** mapped to your local folder **/home/username/hadoop/shared**
- There is a big list of ports exposed, so you can map only ports that you are going to use or you can expose all replacing **-p local_port:exposed_port** by **-P** You can check the full list of ports in the [Dockfile](https://github.com/angelcervera/docker-hadoop/blob/master/Dockerfile)

## For curious people
Because the best idea is not to use this image directly and create your own. In my blog, you can read a step by step article about how I implemented this images: [Full article!](http://www.acervera.com/blog/2015/10/04/hadoop_singlenode_with_docker_from_scratch)


Enjoy!!!
