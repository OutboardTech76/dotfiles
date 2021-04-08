# !/bin/bash

# Copied from  https://github.com/ls4154/termite-ubuntu.git
 
mkdir -p $HOME/installations
cd $HOME/installations

sudo apt-get install -y g++ libgtk-3-dev gtk-doc-tools gnutls-bin \
    valac libtool intltool libpcre2-dev libglib3.0-cil-dev \
    libgnutls28-dev libgirepository1.0-dev libxml2-utils \
    gperf g++
 
# Clone termite and vte repos
git clone --recursive -b v15 https://github.com/thestinger/termite.git termite
git clone -b 0.56.2 https://github.com/thestinger/vte-ng.git vte


# Install vte
cd vte
NOCONFIGURE ./autogen.sh
./configure \
    --prefix=$HOME/installations/vte-static \
    --enable-static \
    --disable-shared \
    --enable-vala=no \
    --disable-gtk-doc \
    --disable-introspection

make -j8
make install -j8
make install-pkgconfigDATA -j8

## Install termite
cd $HOME/installations/termite
export PKG_CONFIG_PATH="$HOME/installations/vte-static/lib/pkgconfig"
make -j8
sudo make install -j8
 
sudo cat << EOF > termite.wrapper
#!/bin/bash
exec /usr/local/bin/termite "\$@"
EOF

sudo chmod +x termite.wrapper

sudo install -d /usr/local/bin/
sudo install -m 755 termite.wrapper /usr/local/bin/

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite.wrapper 60

sudo install -d /usr/local/etc/profile.d/
sudo install -m 644 "$HOME/installations/vte-static/etc/profile.d/vte.sh" /usr/local/etc/profile.d/

sudo install -d /usr/share/terminfo/x
sudo ln -s /usr/local/share/terminfo/x/xterm-termite /usr/share/terminfo/x/xterm-termite
