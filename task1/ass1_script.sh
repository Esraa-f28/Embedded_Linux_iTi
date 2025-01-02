#!/bin/bash 

#create new dir 
mkdir  ~/myDirectory 

#create secondary dir 
mkdir  ~/myDirectory/secondaryDirectory

#make file  inside secondary  dir 
touch  ~/myDirectory/secondaryDirectory/myNotePaper

#copy from secondary dir to primary dir 
cp     ~/myDirectory/secondaryDirectory/myNotePaper ~/myDirectory/

#rename file 
mv     ~/myDirectory/myNotePaper   ~/myDirectory/myOldNotePaper 
echo "completed successfully"

