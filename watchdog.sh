#!/bin/bash

exception="com.genymobile.gnirehtet.relay.CommandExecutionException"

while read line; do
    if [[ $line =~ disconnected ]] || [[ $line =~ $exception ]];then
        sleep 1
        echo "(re)starting gnirehtet"
        pkill -f gnirehtet
        kill $(pidof java)
        sleep 1
        adb devices >> mypipe
        sleep 1
        gnirehtet run  >> mypipe 2>&1 &
    fi
done < mypipe
