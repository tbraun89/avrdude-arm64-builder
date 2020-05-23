FROM ubuntu:focal

COPY arm-source.list /etc/apt/sources.list.d/arm-source.list

RUN apt-get update && dpkg --add-architecture arm64 && apt-get install -y \
    build-essential \
    autoconf \
    gcc-aarch64-linux-gnu \
    bison \
    flex \
    libusb-dev:arm64 \
    libelf-dev:arm64 \
    libftdi-dev:arm64 \
  && rm -rf /var/lib/apt/lists/*
