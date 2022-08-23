#!/bin/bash

valoper=kujiravaloperxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
api_url=http://localhost:1317

counter=$(curl -s "${api_url}/oracle/validators/${valoper}/miss" |\
    jq .miss_counter |\
    sed 's/"//g')

if [ $counter -gt 1000 ]; then
    # ESCALATION!
    message="Price feeder is down!"

    $(dirname $0)/send-pushover.sh "$message"
    $(dirname $0)/send-discord.sh "$message"
    
elif [ $counter -gt 0 ]; then
    message="Missed oracle votes: $counter"
    
    $(dirname $0)/send-discord.sh "$message"
fi
