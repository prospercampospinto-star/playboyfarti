FROM --platform=linux/amd64 ubuntu:22.04

RUN apt-get update && apt-get install -y \
    gcc \
    gdb \
    make \
    binutils \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app