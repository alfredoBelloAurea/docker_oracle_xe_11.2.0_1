docker_oracle_xe_11g version 11.2.0_1 
============================

Oracle Express Edition dockerfile
this docker is based on oficial ubuntu image and it doesn't have nothing installed and exposes the ports 8080 and 1521

PULL:                            docker pull aurea/oracle_xe_11.2.0_1
MAINTAINER:                      Alfredo Bello <alfredo.bello@aurea.com>
CONTAINER NAME:                  oracle_xe_11.2.0_1
VOLUMEN:                         /usr/lib/oracle/xe/oradata/XE, /other,/path
IMAGE:                           ubuntu 14.04
PASSWORDS:                       user: system pass: oracle
EXPOSE:                          8080, 1521

### build online image
docker build --no-cache=true -f dockerfile_ubuntu14.04_oracle_xe_11.2.0_1_online -t aurea/oracle_xe_11.2.0_1 .

### build offline image
docker build --no-cache=true -f dockerfile_ubuntu14.04_oracle_xe_11.2.0_1_offline -t aurea/oracle_xe_11.2.0_1 .

### run image
docker run --name oracle_xe_11.2.0_1 -d -i -t -p 8080:8080 -p 1521:1521 aurea/oracle_xe_11.2.0_1

### stop container
docker stop oracle_xe_11.2.0_1

### start container
docker start oracle_xe_11.2.0_1

Connect database with following setting:
```
hostname: localhost
port: 1521
sid: xe
username: system
password: oracle
```

Password for SYS
```
oracle
```

Connect to Oracle Application Express web management console with following settings:
```
url: http://localhost:1521/apex
workspace: INTERNAL
user: ADMIN
password: oracle
```
