#!/usr/bin/env bash

x=$(tmux capture-pane -p -S '-' -J -t !)
PROMPT_PATTERN=${1:-' ) '}
result=$(echo "$x" | tac | sed -e "0,/$PROMPT_PATTERN/d" | sed "/$PROMPT_PATTERN/,\$d" | tac)
echo -n "$result" | xsel -ib
