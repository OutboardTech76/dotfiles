# !/bin/bash

# Clone termite and vte repos
git clone --recursive https://github.com/thestinger/termite.git termite
git clone https://github.com/thestinger/vte-ng.git vte

# Install vte dependencies
sudo apt-get install -y autoconf libglib2.0-dev gtk-doc-tools intltool \
	gperf libgnutls28-dev gnutls-bin libxml2-utils libgtk-3-dev \
	libpcre2-dev libglib3.0-cil-dev libgirepository1.0-dev \
	valac


# Install vte

# cd vte
# ./autogen.sh --disable-introspection --disable-vala
# ./configure --disable-instrospection --disable-vala
# make -j8
# sudo make install -j8

# Install termite
# cd ../termite
# make -j8
# sudo make install -j8
