# MQTT benchmarking tool

The [MQTT-benchmark](https://github.com/krylovsk/mqtt-benchmark) tool, which has been dockerized for use in this project, is used to measure the performance of message publishing over an MQTT broker.

Run using Docker:

```console
docker build -t <name> .
docker run -e "BROKER=<string: protocol://url:port>" \
           -e "COUNT=<number>" \
           -e "SIZE=<number>" \
           -e "CLIENTS=<number>" \
           -e "QOS=<number>" \
           -e "USERNAME=<string>" \
           -e "PASSWORD=<string>" \
           -e "TOPIC=<string>" \
           --network <docker network ID (if broker is also running in docker)> \
           <name>
```

Example use:

```console
docker build -t go-mqtt-bm .
docker run -e "BROKER=tls://172.26.0.8:8883" \
           -e "COUNT=2" \
           -e "SIZE=100" \
           -e "CLIENTS=2" \
           -e "QOS=2" \
           -e "USERNAME=admin" \
           -e "PASSWORD=password" \
           --network e7add65e3e97  \
           go-mqtt-bm
```

Output:

```console
{
    "runs": [
        {
            "id": 1,
            "successes": 2,
            "failures": 0,
            "run_time": 0.027207317,
            "msg_time_min": 0.290779,
            "msg_time_max": 11.25084,
            "msg_time_mean": 5.7708095,
            "msg_time_std": 7.749933455318214,
            "msgs_per_sec": 73.50963713180539
        },
        {
            "id": 0,
            "successes": 2,
            "failures": 0,
            "run_time": 0.027330115,
            "msg_time_min": 0.20848,
            "msg_time_max": 0.374784,
            "msg_time_mean": 0.291632,
            "msg_time_std": 0.1175946861384476,
            "msgs_per_sec": 73.17934812934377
        }
],
"totals": {
    "ratio": 1,
    "successes": 4,
    "failures": 0,
    "total_run_time": 0.027368099,
    "avg_run_time": 0.027268716,
    "msg_time_min": 0.20848,
    "msg_time_max": 11.25084,
    "msg_time_mean_avg": 3.03122075,
    "msg_time_mean_std": 3.874363565574755,
    "total_msgs_per_sec": 146.68898526114916,
    "avg_msgs_per_sec": 73.34449263057458
    }
}
```
