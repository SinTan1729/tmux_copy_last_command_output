# Tmux Copy Last Command Output

Capture the output of the last terminal command and copy it to clipboard.

## Installation

### Using [TPM](https://github.com/tmux-plugins/tpm):

    set -g @plugin 'SinTan1729/tmux_copy_last_command_output'

Hit <kbd>prefix</kbd> + <kbd>I</kbd> to fetch and source the plugin.

### Manual

Clone the repo:

    git clone https://github.com/SinTan1729/tmux_copy_last_command_output.git ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/plugins/tmux_copy_last_command_output

Source it in your `.tmux.conf` (or `$XDG_CONFIG_HOME/tmux/tmux.conf`):

    run-shell ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/plugins/tmux_copy_last_command_output/tmux_copy_last_command_output.tmux

Reload TMUX conf by running:

    tmux source-file $XDG_CONFIG_HOME/tmux/tmux.conf

## Configuration

#### @command-copy-key

Required. Set Prefix + key to trigger the plugin. For example, `prefix+g`:

```
set -g @command-copy-key g
```

#### @command-copy-prompt-pattern

Required. A regexp to identify command separator. Usually a prompt. E.g., if set to ' ) ', the plugin will capture the latest output up until the first line that contains ' ) ':

```
set -g @command-copy-prompt-pattern ' ) '
```
