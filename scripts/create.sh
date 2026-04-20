#!/bin/bash

tmux setenv -u tmux_nb_create_title
tmux command-prompt -p "Title:" "setenv tmux_nb_create_title '%1'"
TITLE=$(printf '%q' "$(tmux showenv tmux_nb_create_title | sed 's/^tmux_nb_create_title=\(.*\)/\1/')")

if [ -n "$TITLE" ]; then
	tmux display-popup -E -w 80% -h 80% "nb + --title $TITLE"
fi
