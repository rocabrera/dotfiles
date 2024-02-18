#!/bin/bash

export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"/alacritty
mkdir -p "$XDG_CONFIG_HOME"/skhd
mkdir -p "$XDG_CONFIG_HOME"/yabai

# Shell configuration
ln -sf "$PWD/shell/bash/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/shell/bash/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/shell/bash/.bash_aliases" "$HOME"/.bash_aliases
ln -sf "$PWD/shell/bash/.bash_envvars" "$HOME"/.bash_envvars

# Terminal configuration
ln -sf "$PWD/terminal/.inputrc" "$HOME"/.inputrc
ln -sf "$PWD/terminal/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/terminal/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml

# Mac: Shortcuts & Window manager configuration
ln -sf "$PWD/mac/skhdrc" "$XDG_CONFIG_HOME"/skhd/skhdrc
ln -sf "$PWD/mac/yabairc" "$XDG_CONFIG_HOME"/yabai/yabairc

# IDE configuration 
ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
