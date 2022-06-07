#!/bin/bash


sleep 2s

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

if [ $# -eq 0 ]
then
echo "How To Use :SCRIBT -->Sub_Harry "

echo "-------------------------------"

echo "Run:./sub_Harry  +=>  Domain  --> name Web site"

echo "Ex:./sub_Harry  www.harry.com  harry "

else
wget $1 2> /dev/null && sleep 3s #&&less index.html | grep "href=" |cut -d ":" -f 2 | cut -d "/" -f 3 | grep "udemy " |cut -d '"' -f 1 | grep -v 'udemy'| uniq >> su.txt


#less index.html | grep "href=" |cut -d ":" -f 2 | cut -d "/" -f 3 | grep "udemycdn" | cut -d "-" -f 2 | cut -d '.' -f 2,3 >> sub.txt
less index.html |grep 'href=' |cut -d":" -f 2|cut -d'/' -f 3 |grep $2 |cut -d'"' -f 1 |cut -d'\' -f 1 |uniq >>sub.txt

echo "###############-{The Runing}-###############"

###############[SUb]###################
echo "#########################"         
echo "The Sub and The Valid Sub"
echo "#########################"
for sub in $(cat sub.txt)
do
if [[ $(ping -c 1 $sub 2> /dev/null ) ]]
then
echo "$sub ==> Ping"
echo $sub >> valid_sub.txt
else 
echo "sub ===> No Ping"
fi
done

###############[IP]###################
echo "###############"    
echo "Get The IP"
echo "###############"
for ip in $(cat valid_sub.txt)
do
host $ip
host $ip |cut -d " " -f 4 |uniq >> IP.Txt
done

sleep 2s
echo "----------------------------------------"
echo "...... Done The Script Sub_Harry......! "
echo "________________________________________"
fi
