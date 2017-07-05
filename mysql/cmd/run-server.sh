#!/bin/sh

docker run --name=mysql -d -p 3308:3306 -v /data/mysql:/var/lib/mysql kevin01/mysql:v0.1

