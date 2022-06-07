#!/bin/bash


sleep 1s

#echo "::::            ::::                  ::::;;;;;;;;                 "
#echo "::::            ::::                  ::::     ;;;                 "
#echo "::::            ::::                  ::::     ;;;                 "
#echo "::::            ::::                  ::::     ;;;                 "
#echo "::::::::::::::::::::                  ::::     ;;;                 "
#echo "::::::::::::::::::::      #####       ::::;;;;;;;;                 "
#echo "::::            ::::                  ::::                         "
#echo "::::            ::::                  ::::                         "
#echo "::::            ::::                  ::::                         "
#echo "::::            ::::                  ::::                         "

pyfiglet --color=RED "Sub ==> Harry"

sleep 1s
if [ $# -eq 0 ]
then
echo "How To Use :SCRIPT -->Sub_Harry "

echo "-------------------------------"

echo "Run:./sub_Harry  +=>  Domain  +-> name Web site"

echo "Ex:./sub_Harry  www.harry.com  harry "

else
wget $1 

sleep 2s


less index.html |grep 'href=' |cut -d":" -f 2|cut -d'/' -f 3 |grep $2 |cut -d'"' -f 1 |cut -d'\' -f 1 |uniq  >>sub.txt



echo "###############-{The Runing}-###############"



###############[SUb]###################
echo "#########################"         
echo "The Sub and The Valid Sub"
echo "#########################"

echo "                                       "
echo "                                       "
for sub in $(cat sub.txt)
do
if [[ $(ping -c 1 $sub 2>erro ) ]]
then
echo "$sub ======> Ping"
echo $sub >> valid_sub.txt
else 
echo "sub ======> No Ping"
fi
done

###############[IP]###################


echo "###############"    
echo "Get The IP"
echo "###############"
echo "               "
echo "               "


for ip in $(cat valid_sub.txt)
do
host $ip
host $ip |cut -d " " -f 4 |grep -v 'alias' |grep -v 'address' |uniq  >> IP.Txt
done

sleep 1s
echo "----------------------------------------"
echo "...... Done The Script Sub_Harry......! "
echo "________________________________________"
fi
