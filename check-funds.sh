#!/bin/bash

address=kujiraxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
api_url="https://some.api.endpoint"
denom=ukuji

amount=$(curl -s "${api_url}/cosmos/bank/v1beta1/balances/${address}" |\
    jq '.balances[] | select(.denom=="ukuji").amount' |\
    sed 's/"//g')

if [ $amount -lt 1000000 ]; then
    # ESCALATION!
    message="Less than 1 KUJI left\nProbably nothing..."

    $(dirname $0)/send-pushover.sh "$message"
    $(dirname $0)/send-discord.sh "$message"
    
elif [ $amount -lt 10000000 ]; then
    message="Less than 10 KUJI left\nTime to refuel"
    
    $(dirname $0)/send-discord-webhook.sh "$message"
fi
