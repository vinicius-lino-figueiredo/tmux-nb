#!/bin/bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCRIPTS_DIR="$CURRENT_DIR/scripts"

CREATE_KEY=N
READ_KEY=V
EDIT_KEY=E
DELETE_KEY=X

OPTION="$(tmux show-option -gqv @tmux-nb-create-key)"
if [ -n "$OPTION" ]; then
	CREATE_KEY="$OPTION"
fi
OPTION="$(tmux show-option -gqv @tmux-nb-read-key)"
if [ -n "$OPTION" ]; then
	READ_KEY="$OPTION"
fi
OPTION="$(tmux show-option -gqv @tmux-nb-edit-key)"
if [ -n "$OPTION" ]; then
	EDIT_KEY="$OPTION"
fi
OPTION="$(tmux show-option -gqv @tmux-nb-delete-key)"
if [ -n "$OPTION" ]; then
	DELETE_KEY="$OPTION"
fi


tmux bind-key "$CREATE_KEY" run-shell "$SCRIPTS_DIR/create.sh"
tmux bind-key "$READ_KEY"   run-shell "$SCRIPTS_DIR/read.sh"
tmux bind-key "$EDIT_KEY"   run-shell "$SCRIPTS_DIR/edit.sh"
tmux bind-key "$DELETE_KEY" run-shell "$SCRIPTS_DIR/delete.sh"
