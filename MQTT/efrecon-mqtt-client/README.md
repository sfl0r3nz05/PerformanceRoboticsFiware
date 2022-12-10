# Efrecon MQTT client tool

[This tool](https://hub.docker.com/r/efrecon/mqtt-client) behave almost exactly as the official Eclipse mosquitto server images, while providing easy configuration of most parameters through environment variables. This minimal Alpine-based image contains the two mosquitto clients mosquitto_sub and mosquittto_pub for sending data to topics and subscribing to topics

## Subscribing to Topics

The following command would listen to all topics at the test mosquitto server -v prints out the actual payload received:

```console
docker run -it --rm efrecon/mqtt-client sub \
        -h test.mosquitto.org \
        -t "#" \
        -v
```

## Publishing to Topics

To connect and publish data to topic test/testdevice something like this could be used:

```console
docker run -it --rm efrecon/mqtt-client pub \
        -h test.mosquitto.org \
        -p 1883 \
        -t "test/testdevice" \
        -m '[{"json":"validated","data":42},{"to":2,"test":"with"}]'
```

## Parameters used in the performance evaluation

- To use the tool for performance purpose the `efrecon/mqtt-client` tool, given a topic and payload, both the number of messages and the frequency of message delivery are changed.
  - The *--repeat* option repeats the publication N times.
  - The *--repeat-delay* option waits time seconds between published messages.
