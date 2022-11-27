FROM nvidia/cuda:11.5.1-base-ubuntu20.04
SHELL ["/bin/bash", "-c"]
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update --fix-missing && apt upgrade -y
RUN apt install -y 

# Install packages
RUN --mount=target=/var/lib/apt/lists,type=cache,sharing=locked \
    --mount=target=/var/cache/apt,type=cache,sharing=locked \
    rm -f /etc/apt/apt.conf.d/docker-clean \
    apt install -y --no-install-recommends \
    software-properties-common wget curl gpg gcc git cmake make swig g++ python3-pip libssl-dev libmodule-install-perl libboost-all-dev libopenblas-dev x11-apps x11-utils locate libc++-7-dev libc++abi-7-dev xorg-dev build-essential checkinstall  libreadline-gplv2-dev  libncursesw5-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev && \
    cd /usr/src && \
    wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz && \
    tar xzf Python-3.10.8.tgz && \
    cd Python-3.10.8 && \
    ./configure --enable-optimizations && \
    make install

ENV TORCH_CUDA_ARCH_LIST="Ampere;Turing;Pascal"
ENV FORCE_CUDA="1"

COPY awesome_ml_proj/requirements.txt /etc/requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip pip install -r /etc/requirements.txt

COPY docker/entrypoint.sh /etc/entrypoint.sh
RUN chmod 755 /etc/entrypoint.sh
ENTRYPOINT ["/etc/entrypoint.sh"]

RUN echo "cd ~/projects" >> ~/.bashrc