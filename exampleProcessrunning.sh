#!/bin/sh


#####  set -x ####

## PID check

cd /opt/promis/application/jboss/jboss/bin


PID_FILE=promis.pid
PID=$(cat $PID_FILE)

## check ##

RUNNING_PID=$(ps -ef |grep 3048691 |grep -v grep |awk '{print $2}')

if [[ $PID -eq $RUNNING_PID ]]; then
echo "OK - Promis Jboss is running."
exit 0
fi

if [[ $PID !-eq $RUNNING_PID ]]; then
echo "CRITICAL - Promis is not running,Check Jboss process."
exit 2
fi
~
