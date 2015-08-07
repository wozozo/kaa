FROM debian:8.0
MAINTAINER yo1 <wozozo@gmail.com>

ENV LANG C.UTF-8

RUN apt-get update && apt-get install --no-install-recommends -y -q \
    build-essential python3 python3-dev python3-pip \
    libncursesw5 libncurses5-dev libncursesw5-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install kaaedit

CMD ["/usr/local/bin/kaa"]

