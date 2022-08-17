#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

default_capture_key="g"
CAPTURE_KEY=$(tmux show-option -gqv @command-copy-key)
CAPTURE_KEY=${CAPTURE_KEY:-$default_capture_key}

default_prompt_pattern=" ) "
PROMPT_PATTERN=$(tmux show-option -gqv @command-copy-prompt-pattern)
PROMPT_PATTERN=${PROMPT_PATTERN:-$default_prompt_pattern}

tmux bind $CAPTURE_KEY new-window -n -d last-command-output -e PROMPT_PATTERN="$PROMPT_PATTERN" "$CURRENT_DIR/plugin.sh"
