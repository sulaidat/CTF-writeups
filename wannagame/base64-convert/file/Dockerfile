FROM ubuntu:22.04

ENV LC_CTYPE C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN useradd -u 1000 ctf

RUN apt-get update && apt-get install -y socat default-jdk default-jre

WORKDIR /home/ctf/

COPY ./ .

USER ctf

EXPOSE 9003

CMD socat \
      TCP-LISTEN:9003,reuseaddr,fork \
      EXEC:"/home/ctf/run.sh"
