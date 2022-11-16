# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## etc/bashrc_custom
This file contains the configurations set for my terminal including aliases, functions, and other useful sortcuts/tools that can be used to make development easier
## etc/vimrc
The vimrc file contains the configurations that I have set for the vim editor such as setting line numbers, turning syntax highlighting on, setting auto-indent to on, changing the color to 'elflord', setting the ruler, etc
## bin/linux.sh
The linux.sh script will check to ensure that the user is on a linux based system, and as long as they are it will create a .TRASH directory (in the user's home directory) if it doesn't already exist, changes the name of ~/.vimrc to ~/.bup_vimrc, and then prints the contents of the vimrc file (lcated in the etc folder of this repo), to a file in the user's home directory named .vimrc. It ends by adding a source statement to the end of the user's .bashrc file in their home directory.
## bin/cleanup.sh
This script is responsible for undoing everything that was done in the linux script. What this means is that the .TRASH directory in the user's home directory will be deleted, the source statement that was added to the end of the user's .bashrc file will be deleted, and the .vimrc file will be deleted from the user's home directory
##Makefile
This make file ties everything in this repo together. When executed, the dafault action will be to call the linux recipe, which will immediately call on the clean recipe, which executes the cleanup.sh script to ensure that nothing from a previous call is in the user's home directory. Once that is done, the Makefile then executes the linux.sh script to place my customization files into the user's personal customization files (.vimrc and .bashrc).
