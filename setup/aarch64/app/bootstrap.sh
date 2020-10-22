#!/bin/sh

apt update -y
apt upgrade -y
apt install -y cmake gcc git g++ make python python3 python3-venv emacs

# setup gcc cross-compiler
apt install -y gcc-aarch64-linux-gnu

# setup qemu-arm
apt install -y libpixman-1-dev libglib2.0-dev ninja-build pkg-config python3-setuptools
git clone https://git.qemu.org/git/qemu.git
cd qemu
git submodule update --init --recursive
mkdir _build
cd _build
../configure --target-list=aarch64-softmmu,aarch64-linux-user
ninja
ninja install

# run test
cd /app/hello-world
make
qemu-aarch64 -L /usr/aarch64-linux-gnu/ ./app.out
