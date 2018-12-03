# Create a name for the initial tmux session.
session="work"

# Create a new session called work and split the window.
tmux new -s work -d
tmux split-window -h -p 80 -t $session

# Open vim in the second window and return to the first window.
tmux select-pane -t 1
tmux send-keys -t $session "vim" C-m
tmux select-pane -t 0

# Split pane 1 horizontal by %80
# tmux splitw -v -p 20
# tmux splitw -h -p 80

# Attach the session to the running tmux instance.
tmux attach -t $session

