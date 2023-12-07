#!/bin/bash

DIR="$(pwd)/$(dirname $0)"
SESSION="PiMC"
EXISTS=$(tmux list-sessions | grep $SESSION)

#if session does not exist already, create it and run the script within it:
if [ "$EXISTS" = "" ] #tmux session exists:
then
	tmux new-session -d -s $SESSION
	tmux rename-window -t 0 'PiMC Console'
	tmux send-keys -t $SESSION:0 "sh $(MCSERV)mcgang.sh" C-m
fi

tmux attach-session -t $SESSION:0
