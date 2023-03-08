#!/bin/bash
date = $(date)
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo "Welcome To Safaricom Mpesa Services"
sleep 1
echo "***********1.MPESA********************"
echo "--------------------------------------"
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