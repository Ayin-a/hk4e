FROM ubuntu:18.04

EXPOSE 8080/tcp

WORKDIR /dispatch
COPY ./bin/dispatch ./dispatch
RUN chmod +x ./dispatch

ENTRYPOINT ["./dispatch"]
