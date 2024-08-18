#!/bin/bash
DATE=$(date +%H:%M:%S)
# [ timestamp ] [User Script/$NAME.sh] $LOGTYPE: $LOGDATA
echo "[$DATE] [User Script/$3] $1: $2" >> logs/latest.log
