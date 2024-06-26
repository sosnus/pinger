#!/bin/bash
echo "PARAMETERS:"
echo "VNAME=$VNAME"
echo "VURL=$VURL"
echo "VTIME=$VTIME"
sleep 3
echo "START!"
while true; do
    echo -n "[$(date +'%Y-%m-%d %H:%M:%S')]  "
    echo -n "send ping {$VNAME} response: "
    curl -s -S -o - $VURL
    sleep $VTIME
    echo " "
done
# more info: https://tinyurl.com/yssmj7yp