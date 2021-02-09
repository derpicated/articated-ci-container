FROM ubuntu:groovy

RUN apt-get update && apt-get --yes install sudo git build-essential cmake pipx qtbase5-dev qtmultimedia5-dev qtdeclarative5-dev libqt5opengl5-dev

RUN useradd -u 1001 dumb && usermod -aG sudo dumb
USER dumb
