FROM ubuntu:18.04
RUN apt-get update -y
RUN apt-get install -y python3.7 \
&& apt-get install -y python3-pymodbus
RUN apt-get install -y net-tools
RUN apt-get install -y nano
RUN apt-get install -y iputils-ping
RUN apt-get install -y iproute2
ADD performance.py performance.py
CMD ["python3" "performance.py"]