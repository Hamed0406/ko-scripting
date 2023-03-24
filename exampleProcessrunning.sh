#!/bin/sh


#####  set -x ####

## PID check

cd /opt/jboss/jboss/bin


PID_FILE=promis.pid
PID=$(cat $PID_FILE)

## check ##
## 3048691 example of PID number##
RUNNING_PID=$(ps -ef |grep 3048691 |grep -v grep |awk '{print $2}')

if [[ $PID -eq $RUNNING_PID ]]; then
echo "OK - Your Jboss is running."
exit 0
fi

if [[ $PID !-eq $RUNNING_PID ]]; then
echo "CRITICAL - Your Jboss is not running,Check Jboss process."
exit 2
fi
~
