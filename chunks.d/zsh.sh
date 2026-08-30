#!/bin/bash

echo "Install zsh..."

# install zsh and git
sudo apt install zsh

# set zsh as shell
sudo chsh -s /bin/zsh khanton

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# set theme
sed -i s/robbyrussel/dpoggi/ ~/.zshrc
