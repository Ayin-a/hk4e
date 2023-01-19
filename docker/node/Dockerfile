FROM ubuntu:18.04

WORKDIR /node
COPY ./bin/node ./node
RUN chmod +x ./node

ENTRYPOINT ["./node"]
