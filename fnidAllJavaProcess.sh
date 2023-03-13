#!/bin/sh
RUNTIME="java"

OUTPUT=ps -ef | grep $RUNTIME | grep -v grep | awk '{print $2}'
echo PID id is $OUTPUT 