FROM golang:1.16-alpine

RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN go get -d .
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]