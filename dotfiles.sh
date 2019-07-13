#!/bin/bash

DESTINATION_PATH=~/.dotfiles/

cp ~/dotfiles.sh ${DESTINATION_PATH}dotfiles.sh
cp ~/.bash_profile ${DESTINATION_PATH}.bash_profile
cp ~/.vimrc ${DESTINATION_PATH}.vimrc
cp -r ~/.vim/colors ${DESTINATION_PATH}.vim/
cp ~/.tmux.conf ${DESTINATION_PATH}.tmux.conf
cp ~/.config/alacritty/alacritty.yml ${DESTINATION_PATH}alacritty.yml
cp ~/.gemrc ${DESTINATION_PATH}.gemrc
cp ~/.gitconfig ${DESTINATION_PATH}.gitconfig
cp ~/.gitignore_global ${DESTINATION_PATH}.gitignore_global
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-settings ${DESTINATION_PATH}Sublime/User/
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/*.sublime-keymap ${DESTINATION_PATH}Sublime/User/
