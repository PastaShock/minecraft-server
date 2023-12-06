#!/bin/sh
SCRIPTPATH="$(pwd)/$(dirname $0)/minecraft_server.1.12.jar"
while true
do
	java -jar "minecraft_server.1.12.jar"
	sleep 10
done
