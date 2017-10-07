#! /bin/bash

# 008

# NEEDED

# ssqli and bingoo

# TOOLS FOR NOOB

# IM JUST NOOB

echo ""
echo ""
echo ""


echo "          ███╗   ██╗███████╗███████╗██████╗ ███████╗██████╗           "
echo "          ████╗  ██║██╔════╝██╔════╝██╔══██╗██╔════╝██╔══██╗          "
echo "          ██╔██╗ ██║█████╗  █████╗  ██║  ██║█████╗  ██║  ██║          "
echo "          ██║╚██╗██║██╔══╝  ██╔══╝  ██║  ██║██╔══╝  ██║  ██║          "
echo "          ██║ ╚████║███████╗███████╗██████╔╝███████╗██████╔╝          "
echo "          ╚═╝  ╚═══╝╚══════╝╚══════╝╚═════╝ ╚══════╝╚═════╝           "
echo "          ==================byghost=========================          "
echo ""
echo ""
echo ""

echo "          ===================================          "
echo "          ==========CODENAMEIS fvck==========          "
echo "          ==========VERSION 0.1==============          "
echo "          ==========SSQLIANDBINGOOSCANNER====          "
echo "          ==========IMJUSTANOOB==============          "
echo "          ===================================          "
echo ""
echo ""

echo "          =[BEFORE USE THIS TOOL , YOU NEED INSTALL LYNX ,(apt-get install lynx)]="
echo "          =[IF YOU RECODE MY TOOL , I HOPE YOU WILL WRITE MY NICKNAME]="
echo "          =[SQLMAP/SSQLI AND BINGOO]="
echo ""
echo ""

# dorking

echo " [you can use bingoo or ssqli] "
echo " [KLICK 1 FOR BINGOO] "
read answer 

if [[ "$answer" = "1" ]]
then
	./bingoo
else
	echo " YOUR ANSWER IS WRONG , YOU WILL EXIT "
	sleep 3
	exit
fi

echo " [klick y for next step or n for try again with bingoo] "
read ansr

if [[ "$ansr" = "y" ]]
then
	echo  -n " do you open ssqli in new terminal?, klick y/n : "
	read klick
	
	if [[ "$klick" = "y" ]]
	then
		echo " in new terminal klick ./ssqli.sh"
		echo -n "DE : "
		read de
		$de-terminal
	elif [[ "$klick" = "n" ]]
	then
		echo " [WAIT] "
		sleep 3
		./ssqli.sh
	else
		echo "you will exit"
		sleep 3
		exit
	fi
elif [[ "$ansr" = "n" ]]
then
	sleep 2
	./needed.sh
else
	sleep 3
	exit
fi

echo " [THANKS FOR USING MY TOOLS] "
figlet -f slant "byebye"

# end
