#!/bin/sh

current_session=$(tmux display-message -p '#S')
current_window=$(tmux display-message -p '#I')

# Check if there is only 1 pane in a window
if ! tmux list-panes -t "$current_session:$current_window" | grep "^1:" >/dev/null; then
	tmux split-window -v;
	tmux resize-pane -D 14;
else
	tmux kill-pane -t "$current_session:$current_window.1";
fi;
