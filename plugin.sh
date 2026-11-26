#!/usr/bin/env bash

x=$(tmux capture-pane -p -S - -J -t !)
result=$(printf '%s\n' "$x" | tac | sed -e "0,/$PROMPT_PATTERN/d" | sed "/$PROMPT_PATTERN/,\$d" | tac)
printf '%s' "$result" | wl-copy
