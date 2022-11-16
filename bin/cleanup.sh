#!/bin/bash

#Forcibly removes the .vimrc file in the home directory
rm -rf ~/.vimrc
#Removes the line matching source ~/.dotfiles/bashrc_custom in the .bashrc file in the home directory
sed -i 's/source ~\/\.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc
#Forcibly removes the trash directory in the home directory
rm -rf ~/.TRASH
