FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get install -y git build-essential

RUN git clone https://github.com/ColinIanKing/stress-ng.git && \
    cd stress-ng && \
    make

ENTRYPOINT while true; do echo >> /dev/null; sleep 2; done
