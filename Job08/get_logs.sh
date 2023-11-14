#!/bin/bash

dateheure=$(date +"%d-%m-%Y-%H-%M")
nbrconnection=$ last | grep "^imran" | wc -l 
echo $nbrconnection > "number_connection-$dateheure"
tar -cvf /home/imran/Documents/shell-exe/job08/Backup/"number_connection-$dateheure.tar"    "number_connection-$dateheure"
rm "number_connection-$dateheure"
