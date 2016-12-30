FROM fedora:25
MAINTAINER Luke Hinds "lukehinds@gmail.com"

# needed by cargo
ENV USER root

RUN dnf -y update; dnf clean all

RUN dnf -y install file gcc make curl tar

RUN dnf clean all

ADD install.sh install.sh
RUN chmod +x install.sh 
RUN ./install.sh
RUN rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
