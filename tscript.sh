
# setup a work space called `work` with two windows
# I can alias to my work directories

session="work"

# set up tmux
tmux

# create a new tmux session
tmux new-session $session 

# Split pane 1 horizontal by %80
tmux splitw -v -p 20

# Select pane 1, set dir to api, run vim
tmux selectp -t 1 
tmux send-keys "vim" C-m 
