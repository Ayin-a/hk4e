FROM ubuntu:18.04

EXPOSE 22222/udp
EXPOSE 33333/tcp

WORKDIR /gate
COPY ./bin/gate ./gate
RUN chmod +x ./gate

ENTRYPOINT ["./gate"]
