FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl \
    git \
    make \
    ca-certificates \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Instalar Hugo 0.80.0
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.80.0/hugo_extended_0.80.0_Linux-64bit.deb \
    && dpkg -i hugo_extended_0.80.0_Linux-64bit.deb \
    && rm hugo_extended_0.80.0_Linux-64bit.deb

CMD ["/bin/bash"]
