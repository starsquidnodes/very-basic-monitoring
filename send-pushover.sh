#!/bin/bash
#
# https://support.pushover.net/i44-example-code-and-pushover-libraries#unix

message=$1

user=lohngaigi9voojiez3ejoo8aechi1y
token=eeto1tuke9vuo9aedai2eij2unuth9

curl -s "https://api.pushover.net/1/messages.json" \
    --form-string "user=$user" \
    --form-string "token=$token" \
    --form-string "message=$message" \
    --form-string "sound=cosmic"
