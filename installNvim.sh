
# !/bin/bash

sudo apt-get install -y ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip 

git clone https://github.com/neovim/neovim.git neovim
cd neovim
make -j8 CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install -j8
cd ..
rm -rf neovim

