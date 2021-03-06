#!/bin/sh
if test -z $1; then
    name='default'
else
    name=$1
fi
tmux new-session -s $name -d
tmux split-window -p 30
tmux split-window -h
tmux last-pane
tmux split-window -h
tmux select-pane -t 0
tmux split-window -h -p 25
tmux send-keys -t $name.0 vi C-m
tmux send-keys -t $name.3 R C-m
tmux send-keys -t $name.4 ipython2 C-m
tmux attach-session -d -t $name
