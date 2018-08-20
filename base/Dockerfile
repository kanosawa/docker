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

# proxy
#ENV http_proxy http://xxx.xx.xxx.xxx:8080
#ENV https_proxy http://xxx.xx.xxx.xxx:8080

# use domestic server
RUN sed -i.bak -e "s%http://[^ ]\+%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list

# apt-get
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    unzip \
    make \
    git \
    vim \
    tk-dev \
    libssl-dev \
    libbz2-dev \
    libsqlite3-dev \
    libreadline-dev \
    zlib1g-dev \
    libasound2-dev \
    libxss1 \
    libxtst6 \
    gdebi

# VSCode
RUN wget -O vscode-amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
RUN yes | gdebi vscode-amd64.deb
RUN rm vscode-amd64.deb

# pyenv
RUN git clone https://github.com/yyuu/pyenv.git ~/.pyenv
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
RUN pyenv install 3.6.6
RUN pyenv global 3.6.6

# pip
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    pylint
