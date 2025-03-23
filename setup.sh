#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"/kitty

# Shell configuration
ln -sf "$PWD/shell/bash/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/shell/bash/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/shell/bash/.bash_aliases" "$HOME"/.bash_aliases
ln -sf "$PWD/shell/bash/.bash_envvars" "$HOME"/.bash_envvars

# Terminal configuration
ln -sf "$PWD/terminal/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/terminal/.tmux.conf" "$HOME"/.tmux.conf

