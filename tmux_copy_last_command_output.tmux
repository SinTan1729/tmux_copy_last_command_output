#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

default_capture_key="g"
CAPTURE_KEY=$(tmux show-option -gqv @command-copy-key)
CAPTURE_KEY=${CAPTURE_KEY:-$default_capture_key}

PROMPT_PATTERN=$(tmux show-option -gqv @command-copy-prompt-pattern)

tmux bind $CAPTURE_KEY run-shell "$CURRENT_DIR/plugin.sh $PROMPT_PATTERN"
