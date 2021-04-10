#!/bin/sh
# setup the secret in aria2.conf file if SECRET environment variable is present
if [ $SECRET ]; then
    echo "adding rpc secret to config"
    echo "rpc-secret=${SECRET}" >>/app/aria2.conf
fi

# create a session file
touch /downloads/aria2.session
touch /downloads/aria2.logs

# start the aria2 daemon
echo "starting aria2 daemon"
/usr/bin/aria2c --conf-path=/app/aria2.conf
