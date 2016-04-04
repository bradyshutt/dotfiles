#!/bin/bash

ln -sf ~/dotfiles/.vimrc ~
ln -sf ~/dotfiles/.bashrc ~
ln -sf ~/dotfiles/.tmux.conf ~

if [ -d ~/.vim/colors/ ] ; then 
   ln -sf ~/dotfiles/main.vim ~/.vim/colors/
else
   mkdir -p ~/.vim/colors/
   ln -sf ~/.dotfiles/main.vim ~/.vim/colors/
fi




source ~/.bashrc

