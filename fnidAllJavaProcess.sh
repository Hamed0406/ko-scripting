#!/bin/sh
## local variable

RUNTIME="java"

ps -ef | grep $RUNTIME | grep -v grep | awk '{print $2}'
