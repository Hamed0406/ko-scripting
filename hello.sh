#!/bin/bash
# This is the first Bash shell
# Scriptname : Hello.sh

echo "Hello $LOGNAME, Have a nice day !"
#Legacy form  `pwd`
echo "Your are working in directory $(pwd)."
# Legacy form  `uname -n`
echo "You are working on a machine called $(uname -n)."
echo "List of files in your directory is."
ls # List files in the present working directory
#Legacy form  `date +%T`
echo "Bye for now $LOGNAME. The time is $(date +%T)!"