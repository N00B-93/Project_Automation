#!/usr/bin/bash

# SCRIPT:	automation.sh

# AUTHOR:	Alabeni Omosheye David (A.K.A $N00B)

# DATE:		4th February, 2023

# PURPOSE:	The purpose of this shell script is to automate the process of doing ALXSE projects and reduce the stress of the students 
#		having to type so many commands while doing their projects.

# PLATFORM:	This script was written on ubuntu 22.04 LTS

# REVIEW:	None yet



###############################################################################
echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"
echo -e "\t\t\t\t\tWELCOME TO AUTOMATION.SH\n"
echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n"

echo -e "Hi,\nMy name is \$N00B, how can i help you???"
echo -e "To assist with your Project, press 1\nTO Exit, press 0."
read option

case $option in
	0 )
		exit;;
	1 )
		
		#Reads in the name of the file the user wants to create

		read -p "Please enter the file name: " file_name

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
				read -p "Please input object file name: " object_file_name
        			gcc $file_name -o $object_file_name
				sudo chmod +x $object_file_name
				echo
				echo -e  "@@@@@@@@@@@@@@@ Program Output @@@@@@@@@@@@@@@\n"
                		./$object_file_name
				echo
				echo -e "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";;
			2 )
				sudo chmod +x $file_name
				echo
				echo -e "@@@@@@@@@@@@@@@ Program Output @@@@@@@@@@@@@@\n"
				./$file_name
				echo
				echo -e "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n";;
			* )
				echo "please enter a correct choice!!!"
				exit;; 
		esac

		#Asks the user whether he/she wants to push the file to GitHub

		echo "Do you want to push $file_name to GitHub??"
		read -p "Please enter 1 for YES and 0 for NO: " choice1

		case $choice1 in
			0 )	echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"
				echo -e "\t\t\t\t\tTHANKS FOR USING AUTOMATION.SH\n"
				echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
				exit ;;
			1 )		
				git add .
				read -p "Please enter your commit message: " commit_message
				git commit -m "$commit_message"
				git push
				echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n"
                                echo -e "\t\t\t\t\tTHANKS FOR USING AUTOMATION.SH\n"
                                echo -e "\t\t\t\t@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@";;

			* )
				echo "Please enter a correct option!!!"
				exit;;
		esac
esac
#End of script
#############################################################################
