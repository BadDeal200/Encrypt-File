#!/bin/bash
clear
figlet En/Decrypt | lolcat
echo -e "\033[34mThis is file Encrypter/Decrypter"
echo -e "\033[34mPlease select your choise"

echo -e "\033[31m [1] Encrypt...."
echo -e "\033[31m [2] Decrypt...."
echo -e "\033[31m [3] Exit.........."
                                                      
echo -e -n "\033[32m Your Choice  "
read comn

if [ $comn -eq 1 ]
then
        clear
	figlet Encrypt | lolcat
	echo -e "\033[33mYou have Encrypted file"
	echo -e -n "\033[33mPlease Enter the file name  "
	read file;
	gpg -c $file
	echo -e "\033[33mYour file has been Encryped"
elif [ $comn -eq 2 ]
then
        clear
	figlet Decrypt | lolcat
	echo -e "\033[33mYou Have Decrypted File"
	echo -e -n "\033[33mPlease Enter the file name  "
	read file2;
	gpg -d $file2
	echo -e "\033[33mYour file has been Decrypted"
elif [ $comn -eq 3 ]
then
	exit
else
	bash encrypt1.sh
fi
