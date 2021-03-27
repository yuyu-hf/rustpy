FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y \
    gcc \
    curl \
    make \
    software-properties-common

# Install rust
# https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap12.html
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustup toolchain install 1.51.0
RUN rustup default 1.51.0

# Install linter for rust
RUN rustup component add clippy

# Install python3
RUN add-apt-repository ppa:deadsnakes/ppa -y && \
    apt update && apt install -y \
    python3.9 python3.9-dev python3.9-distutils && \
    curl https://bootstrap.pypa.io/get-pip.py | python3.9
