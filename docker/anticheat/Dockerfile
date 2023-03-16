FROM ubuntu:18.04

WORKDIR /anticheat
COPY ./bin/anticheat ./anticheat
RUN chmod +x ./anticheat

ENTRYPOINT ["./anticheat"]
