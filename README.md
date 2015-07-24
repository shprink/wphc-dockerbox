## Install

```
docker run -it -p :8080 shprink/wphc-dockerbox bash
```

## Build (only for the owner)

```
docker build -t shprink/wphc-dockerbox .
```

## Commands

* To see running containers: ```docker ps```
* To see all containers: ```docker ps -a```
* To stop a container: ```docker stop [container_id_or_name]```
* To start an existing container: ```docker start [container_id_or_name]```
* To see the logs of a container:```docker logs -f [container_id_or_name] -f is```
* To remove a container: ```docker rm <Container ID>```
* To remove all containers: ```docker rm $(docker ps -a -q)```
* To remove images: ```docker rmi <Container ID>```
* To remove all images: ```docker rmi $(docker images -a -q)```
