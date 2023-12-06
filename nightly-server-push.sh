#!/bin/bash
ME=$(basename "$0")
DATE=$(date)
STRING="Nightly automated server backup of player and world data - $DATE"
git add -A
git commit -m "$STRING"
git push origin main
sh add-to-log.sh $ME "git may have been pushed!" "INFO"
