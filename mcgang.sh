#!/bin/sh
SCRIPTPATH="$(pwd)/$(dirname $0)/minecraft_server.1.12.jar"
# ENV:
source .env
while true
do
  .restart-network.sh
	java -jar "minecraft_server.1.12.jar"
	sleep 10
done
