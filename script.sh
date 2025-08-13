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

    response=$(curl --max-time 40 -s -S -o - $VURL)
    # Check if response matches expected JSON
    if [ "$response" = '{"ok":true}' ]; then
        echo $response
    else
        echo "Unexpected response: $response, try once again..."
        echo -n "send AGAIN ping {$VNAME} response: "
        curl --max-time 40 -s -S -o - $VURL
    fi
    sleep $VTIME
    # echo " "
done
# more info: https://tinyurl.com/yssmj7yp