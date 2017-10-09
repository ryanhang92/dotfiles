## Preparation:
- Mac:
  - brew install tmux
  - brew install reattach-to-user-namespace

- Debian-based Linux:
  - sudo apt-get update; apt-get install tmux 

## Albert's Cheatsheet:

### Outside tmux
New session
```
tmux
```
New session with name
```
tmux new -s your_session_name
```
List sessions
```
tmux ls
```
Attach to previous session
```
tmux a
```
Attach to session by name
```
tmux a -t your_session_name
```
Kill all sessions
```
tmux kill-server
```
### Inside tmux
Everything should be prefixed by your prefix key (default to Ctrl+b)

#### Session
List and select session
```
s
```
Rename current session
```
$
```
Create new session
```
:new<CR>
```
Kill current session
```
:kill-session<CR>
```
#### Window
Create new window
```
c
```
Kill current window
```
&
```
Select a window by number
```
[0-9]
```
Select a window by entering a number
```
'
```
Rename current window
```
,
```
#### Pane
Split horizontally
```
-
```
Split vertically
```
|
```
Kill current pane
```
x
```
Select pane by direction
```
ARROW_KEY
```
Resize current pane by direction
```
SHIFT+ARROW_KEY
```
Switch pane layout
```
SPACE_BAR
```
