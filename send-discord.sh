#!/bin/bash
#
# using Discord webhook:
# https://www.digitalocean.com/community/tutorials/how-to-use-discord-webhooks-to-get-notifications-for-your-website-status-on-ubuntu-18-04

message=$1

curl -sH "Content-Type: application/json" -X POST \
    https://discordapp.com/api/webhooks/7392649566234283674/Naiyaich1Zae1Ied3ohpaithe8muy5aebiQueiM7co1ubai8ciL0zoofeiy0uW2aegie \
    -d '{"content": "'"$message"'"}'
