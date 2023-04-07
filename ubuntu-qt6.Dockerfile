FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get --no-install-recommends --yes install \
      sudo git build-essential cmake pipx qt6-base-dev qt6-multimedia-dev qt6-declarative-dev libqt6opengl6-dev \
      && rm -rf /var/lib/apt/lists/*

# Qt6 tools are broken on ubuntu 22.04 since qtchooser is unmaintained, so we have to configure it manually #justdebainthings
RUN qtchooser -install qt6 $(which qmake6)
ENV QT_SELECT qt6

RUN useradd -u 1001 dumb && usermod -aG sudo dumb
USER dumb
