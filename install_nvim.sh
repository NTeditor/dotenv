#!/usr/bin/bash

sudo pacman -S  --needed --noconfirm neovim \
  python-pyright shellcheck lua-language-server \
  lua51 luarocks ripgrep

ln -s "$(pwd)/nvim" "$HOME/.config/nvim" 
