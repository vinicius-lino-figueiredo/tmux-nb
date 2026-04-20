#!/bin/bash
get_notes() {
	nb list -s --no-color | sed 's/\[\([0-9]\+\)]\s\+\(.*\)/\1 \2/'
}

fzf_note() {
	echo "$1" | fzf --tmux --preview 'nb show -p $(echo {} | awk '\''{print $1}'\'')'
}

chose_note() {
	fzf_note "$(get_notes)" | awk '{print $1}'
}
