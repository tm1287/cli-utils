#!/bin/bash

function has-session {
  tmux has-session -t 'session1' 2>/dev/null
}

if has-session ; then
  echo "Session already exists"
else
  tmux new-session -d -s 'session1'
  tmux send-keys 'git status' C-m
  tmux split-window -h -p 70
  tmux send-keys '. ./env/bin/activate' C-m
  tmux send-keys '. ./flaskEnvSetup.sh' C-m
  tmux split-window -v -p 50
  tmux send-keys 'npm start' C-m
  tmux split-window -h -p 50
  tmux send-keys 'npm install' C-m
  tmux attach-session -d -t 'session1'
fi

