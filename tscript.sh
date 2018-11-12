# Create a name for the initial tmux session.
session="work"

# Create a new session called work and split the window.
tmux new -s work -d
tmux split-window -h -p 75 -t $session

# Open vim in the second window and return to the first window.
tmux select-pane -t 1
tmux send-keys -t $session "vim" C-m
tmux select-pane -t 0

# Attach the session to the running tmux instance.
tmux attach -t $session

