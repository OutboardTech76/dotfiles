# !/bin/bash

sudo apt-get install -y pkg-config python3 \
    xcb-proto python3-sphinx \
    python3-packaging libxcb-cursor-dev libxcb-xrm-dev libxcb-xkb-dev \
    libasound2-dev libpulse-dev libmpdclient-dev libcurlpp-dev libnl-genl-3-dev \
    libxcb-composite0-dev libxcb-ewmh-dev python-xcbgen \
    libpulse-dev libcairo2-dev libxcb1-dev libxcb-util0-dev \
    libxcb-randr0-dev libxcb-composite0-dev xcb-proto \
    libxcb-image0-dev libxcb-icccm4-dev libjsoncpp-dev

mkdir -p $HOME/installations
cd $HOME/installations

git clone --recursive https://github.com/polybar/polybar polybar
cd polybar
mkdir build && cd build
cmake -DENABLE_I3=ON ..
make -j `nproc`
sudo make install -j `nproc`
