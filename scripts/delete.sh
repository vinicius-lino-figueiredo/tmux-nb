#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/chose_note.sh"

NOTE=$(chose_note)
if [ -z "$NOTE" ]; then
	exit 0
fi

tmux display-popup -E -w 80% -h 80% "nb delete $NOTE"

