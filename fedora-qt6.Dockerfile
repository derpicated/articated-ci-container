FROM fedora:latest

RUN yum -y update && yum -y install \
      sudo git cmake qt6-qtbase-devel qt6-qtdeclarative-devel qt6-qtmultimedia-devel \
      && yum -y clean all  && rm -rf /var/cache
