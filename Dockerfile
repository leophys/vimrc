FROM archlinux

ARG UID 1000
ARG GID 1000

RUN groupadd -g ${GID} vim \
    && useradd -g vim -u ${UID} -m vim \
 && pacman -Sy --noconfirm \
    vim \
    git \
    zsh \
    curl \
    python

USER vim

ENTRYPOINT ["/usr/bin/vim"]
CMD []
