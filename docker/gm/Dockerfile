FROM ubuntu:18.04

EXPOSE 9001/tcp

WORKDIR /gm
COPY ./bin/gm ./gm
RUN chmod +x ./gm

ENTRYPOINT ["./gm"]
