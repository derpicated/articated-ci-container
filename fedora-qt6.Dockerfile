FROM fedora:latest

RUN yum -y update && yum -y install \
      sudo shadow-utils git pipx cmake qt6-qtbase-devel qt6-qtdeclarative-devel qt6-qtmultimedia-devel \
      && yum -y clean all  && rm -rf /var/cache

RUN useradd -u 1001 dumb && usermod -aG wheel dumb
USER dumb
