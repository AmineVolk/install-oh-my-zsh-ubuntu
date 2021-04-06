#!/bin/bash


echo "installing ..."

# sudo apt-get update
# sudo apt upgrade

sudo apt install zsh
sudo apt-get install powerline fonts-powerline

# create the .zshrc file
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ./zshrc.zsh-template ~/.zshrc

# change default Shell
chsh -s /bin/zsh

# add Syntax Highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1

# autosuggestions
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "--- zsh insta successfully ---"

echo "don't forget to reload your terminal"