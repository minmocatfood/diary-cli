#!/bin/sh

# this script has prerequisites which are in the README

# add /.diary as a var so it can be added to user's $HOME
dirending="/.diary"

# using $dirending, initiate the var holding $HOME/.diary
fulldir=$(echo "${HOME}${dirending}")

# store var to be used as the filename which is the current date
filename=$(date)

# echo the date to the user for context
echo $filename

# prompt user for a diary entry
echo "how was your day? "

# read user input
read plaintext

# convert user input to base64 and store in a var called $filecontent
filecontent=$(echo $plaintext | base64)

# go to the users $HOME/.diary directory
cd $fulldir

# store the file content in a file named after the current date
echo $filecontent > "${filename}"

# let the user know that the script has finished
echo ":)"
