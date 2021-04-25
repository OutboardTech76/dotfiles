# !/bin/bash

sudo apt-get install -y gawk procps xdotool

mkdir -p $HOME/installations
cd $HOME/installations

git clone https://github.com/noctuid/tdrop.git tdrop
cd tdrop
sudo make install -j `nproc`

cd $HOME
rm -rf installations
