From nvidia/cuda:9.0-devel-ubuntu16.04

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        build-essential \
        ca-certificates \
        gcc \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        python3 \
        python3-dev \
        python3-pip \
        aria2 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoremove -y \
    && apt-get clean

RUN sudo apt install python3-dev python3-pip
RUN pip3 install wheel

RUN pip3 install --upgrade pip

RUN pip3 install opencv-python
RUN pip3 install opencv-contrib-python
RUN pip3 install tensorflow-gpu==1.6.0

CMD []
ENTRYPOINT ["/bin/bash"]
