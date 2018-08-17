# arg
ARG CUDA_VER
ARG CUDNN_VER

# base image
FROM nvidia/cuda:${CUDA_VER}.0-cudnn${CUDNN_VER}-devel-ubuntu16.04

# work directory
WORKDIR /root
ENV HOME /root

# set noninteractive mode
ENV DEBIAN_FRONTEND noninteractive

# apt-get
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    unzip \
    make \
    git \
    libssl-dev \
    libbz2-dev \
    libsqlite3-dev \
    libreadline-dev \
    zlib1g-dev

# pyenv
RUN git clone https://github.com/yyuu/pyenv.git ~/.pyenv
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
RUN pyenv install 2.7.15
RUN pyenv install 3.6.6
RUN pyenv global 3.6.6
    