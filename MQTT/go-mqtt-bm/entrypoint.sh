#!/bin/sh

go run main.go client.go --broker $BROKER \
                         --count $COUNT \
                         --size $SIZE \
                         --clients $CLIENTS \
                         --qos $QOS \
                         --username $USERNAME \
                         --password $PASSWORD \
                         --password $TOPIC \
                         --format json --quiet