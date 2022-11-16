#!/bin/bash

OS=$(uname)
#Checks if the output of uname = "linux" and if it does, then the the code inside executes
if [ $OS == "Linux" ]; then
	#Doesn't do anything if the OS is Linux (Echos nothing)
	echo ""
#Else statement
else
	#Prints the String (appends) to a file named linuxsetup.log
	echo "Error, not Linux OS" >> linuxsetup.log
	#Ends the terminal session
	exit
#Ends the if statement
fi
#New if statement, checks to see if the .TRASH directory already exists in the home directory
if [ -e ~/.TRASH ]; then
	#Doesn't do anythin if the directory does already exist in the home directory (echos nothing)
	echo""
#Start of else statement
else
	#makes a directory in the home directory named .TRASH only if the directory didn't already exist
	mkdir ~/.TRASH
#Ends the if statement
fi
#Another if statement to check if a file exists named .vimrc in the home directory
if [ -e ~/.vimrc ]; then
	#Changes the name of the .vimrc file in the home directory to .bup_vimrc
	mv ~/.vimrc ~/.bup_vimrc
	#Prints The String (appends) to a file named linuxsetup.log
	echo "The current .vimrc file was changed to '.bup_vimrc'." >> linuxsetup.log
#Ends the if statement
fi

# Prints the contentes of a file named vimrc (located in the parent directory, then the etc directory), to a file in the home directory named .vimrc (overwriting)
cat ./etc/vimrc > ~/.vimrc
#Prints the string (appends) to a file in the home directory named .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
