FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get --no-install-recommends --yes install \
      sudo git build-essential cmake pipx qtbase5-dev qtmultimedia5-dev qtdeclarative5-dev libqt5opengl5-dev \
      && rm -rf /var/lib/apt/lists/*

RUN useradd -u 1001 dumb && usermod -aG sudo dumb
USER dumb
