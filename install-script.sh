#!/bin/bash

# Run this script using sh install-script.sh to install the script

# should have a section where I check if pre-requisites are installed:
# git? is this redundant at this point?
# vim
#default-jre
#if !(java -version)
#sudo apt-get install default-jre
#fi

# add scripts to bashrc:
DIR=$(readlink -f $0)
REPODIR=`dirname $DIR`
echo "repo is located in: $REPODIR"
echo "setting repo location to .bashrc:"
echo "MCSERV=$REPODIR" >> ~/.bashrc
MCSERV=$REPODIR
echo "alias pimc=\"sh $MCSERV/PiMC_tmux.sh\"" >> ~/.bashrc
echo "" 
