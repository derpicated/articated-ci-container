FROM fedora:latest

# TODO(articated #44) Remove qt6-qtbase-private-devel and libxkbcommon-devel once
#  private QMutlimedia API usage has been removed.
RUN yum -y update && yum -y install \
      sudo shadow-utils git pre-commit cmake \
      libxkbcommon-devel qt6-qtbase-devel qt6-qtbase-private-devel qt6-qtdeclarative-devel qt6-qtmultimedia-devel \
      && yum -y clean all  && rm -rf /var/cache

RUN useradd -u 1001 dumb && usermod -aG wheel dumb
USER dumb
