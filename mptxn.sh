#!/bin/bash
date = $(date)
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
echo "        ${GREENBG}*Welcome To Safaricom Mpesa Services*${NC}                 "
echo "--------------------------------------------------------------"
sleep 1
echo "************************1.MPESA*******************************"
echo "--------------------------------------------------------------"
sleep 2

echo "Select Option 1 for MPESA";
read option

if [ $option  -eq 1 ]; then
echo "1.Send Money";
echo "";
echo "2.Withdraw Cash";
echo "";
echo "3.Buy Airtime";
echo "";
echo "4.Lipa Na Mpesa";
echo "";
echo "";
else
echo "Invalid Option";
exit 1;
fi




echo "Choose Service That You Need";
read option2

if [ $option2  -eq 1 ]; then
echo "Enter Phone Number To Send Money";
read phoneNumber
sleep 1
echo "";
echo "Enter Amount";
read amount
echo "";
sleep 1
echo "Enter Your Pin";
read -s  pin
sleep 1
echo "";
echo "Send Ksh.$amount.00 to $phoneNumber? To Continue Press Ok, To Cancel Press Cnc";
read choice

if [ $choice == "Ok" ]; then
echo "";
sleep 2
echo "=================================================================================================="
echo "$NEW_UUID Confirmed. Ksh $amount.00 sent ERICK OYUGI $phoneNumber on $date $date +"%r". New Mpesa ";
echo "balance is Ksh 60,000.87.Transaction cost , Ksh 0.00. Amount you can transact within the day is";
echo "299,900.00. Get a loan today from M-Shwari click https://mpesaapp.page.link/mshwari ";
echo "=================================================================================================="
fi
if [ $choice == "Cnc" ]; then
echo "Transaction Canceled";
fi
fi

#Choice 4 Lipa Na Mpesa Section
if [ $option2  -eq 4 ]; then
echo "**************LIPA NA MPESA****************";
echo "";
sleep 1
echo "1.Pay Bill";
echo "2.Buy Goods And Services";
sleep 1
echo "";
echo "Select option 1 or 2 ";
read option
sleep 1

if [$option  -eq 1 ]; then
echo "Enter business no";

fi

if [$option  -eq 2 ]; then
echo "Enter Till Number ";read tillNumber
sleep 1
echo "Enter Amount";read amount
sleep 1
echo "Enter Your Pin"; read -s pin
sleep

fi
fi