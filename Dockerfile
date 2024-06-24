FROM archlinux

ARG UID 1000
ARG GID 1000

RUN groupadd -g ${GID} vim \
    && useradd -g vim -u ${UID} -m vim \
 && pacman -Sy --noconfirm \
    vim \
    git \
    zsh \
    bat \
    ripgrep \
    curl \
    openssl \
    python \
    rustup \
    go \
    lua

USER vim

RUN rustup default stable

ENTRYPOINT ["/usr/bin/vim"]
CMD []
