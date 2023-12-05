#!/bin/sh
#BINDIR=$(dirname "$(readlink -fn "$0")") cd "$BINDIR"
while true
do
	#java -Xincgc -Xmx800M -Xms800M -jar minecraft_server.1.12.jar -o true
	java -Xincgc -Xmx1024M -Xms1024M -jar minecraft_server.1.12.jar
	# java -jar minecraft_server.1.12.jar
	sleep 10
done
