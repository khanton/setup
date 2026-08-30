#!/bin/bash

echo "Install and setup neovim..."

# need for plugins
sudo apt install build-essential

# download and install neovim
curl -sL https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz | sudo tar -xzf - --strip-components=1 --overwrite -C /usr

# install neovim config
git clone git@github.com:khanton/nvim.git ~/.config/nvim/

mkdir -p ~/.oh-my-zsh/custom

cat >~/.oh-my-zsh/custom/nvim.zsh <<'EOF'
export EDITOR=nvim
EOF
