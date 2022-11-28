# !/bin/bash

sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
	libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libxcb-xkb-dev \
	libstartup-notification0-dev libxcb-randr0-dev libxkbcommon-x11-0 libxkbcommon-x11-dev \
	libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
	autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev \
	meson ninja-build

mkdir -p $HOME/installations
cd $HOME/installations
git clone https://www.github.com/Airblader/i3 i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
#cd i3-gaps
#mkdir -p build && cd build
#meson ..
#ninja
#sudo ninja install

cd $HOME
rm -rf installations
