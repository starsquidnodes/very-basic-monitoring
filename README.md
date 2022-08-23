This is an example of a very basic on-chain monitoring and alerting. The idea is to provide a basic structure, which can be simply expanded while keeping the complexity of every part at a mininum.

## Script types

There are two different types of scripts: check scripts that get the needed data from an api endpoint, parse and check the retrieved values and trigger the notification script(s), if necessary. The notification scripts just contain the commands needed for sending the alert.

## Adding alarming endpoints

You can add an alarming endpoint by simply adding a new script. If you want to have notifications to different Discord channels for example, you could have multiple scripts like `send-discord-general` and `send-discord-important-news`, each with a different url and use them seperately.

Or you modify the notification scripts and pass parameters instead of creating copies.
