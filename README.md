# tmux-kubectl

> A [TPM](https://github.com/tmux-plugins/tpm) friendly tmux plugin to show the current k8s cluster and namespace

## Installation
Add the following to your `~/.tmux.conf` file
```tmux
set -g @plugin 'rameezk/tmux-kubectl'
```

## Usage
Set your status line as follows.
```tmux
set -g status-right 'ﴱ #{kubectl_context}'
```
