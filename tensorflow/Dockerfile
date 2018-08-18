# base image
FROM kanosawa/base:cuda9_cudnn7

# work directory
WORKDIR /root
ENV HOME /root

# set noninteractive mode
ENV DEBIAN_FRONTEND noninteractive

# pip
RUN pip install --no-cache-dir \
    tensorflow-gpu \
    keras \
    matplotlib