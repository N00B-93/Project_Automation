#!/usr/bin/bash

# SCRIPT:	automation.sh

# AUTHOR:	Alabeni Omosheye David (A.K.A $N00B)

# DATE:		4th February, 2023

# PURPOSE:	The purpose of this shell script is to automate the process of doing ALXSE projects and reduce the stress of the students 
#		having to type so many commands while doing their projects.

# PLATFORM:	This script was written on ubuntu 22.04 LTS

# REVIEW:	None yet



###############################################################################

#Reads in the name of the file the user wants to create

read -p "Input the file name: " file_name

#Creates and open the file in VIM editor

vim "$file_name"

#Asks the user whether he/she wants to compile or execute the file created
echo
echo  "Do you want to Execute or Compile and Execute $file_name???"
echo "Press 1 to compile and execute"
echo "press 2 for execution only"
read choice0
echo
case $choice0 in

	1 )
		read -p "Input object file name: " object_file_name
        	gcc $file_name -o $object_file_name
		sudo chmod +x $object_file_name
		echo
		echo "@@@@@@@@@@@@@@@Program OUtput@@@@@@@@@@@@@@@"
		echo
                ./$object_file_name
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo;;
	2 )
		sudo chmod +x $file_name
		echo
		echo "@@@@@@@@@@@@@@@Program Output@@@@@@@@@@@@@@"
		echo
		./$file_name
		echo
		echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		echo;;
	* )
		echo "Enter correct choice!!!"
		exit 
esac

#Asks the user whether he/she wants to push the file to GitHub

echo "Do you want to push $file_name to GitHub??"
read -p "Enter 1 for YES and 0 for NO: " choice1

case $choice1 in
	0 )
		exit ;;
	1 )		
		git add $file_name
		read -p "Enter your commit message: " commit_message
		git commit -m "$commit_message"
		git push "$file_name" ;;
	* )
		echo "Enter a correct option!!!"
		exit;;
esac

#End of script
#############################################################################
