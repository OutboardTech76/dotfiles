# !/bin/bash

mkdir -p $HOME/installations/exa
cd  $HOME/installations/exa

# Download exa and extract
wget -c https://github.com/ogham/exa/releases/download/v0.10.0/exa-linux-x86_64-v0.10.0.zip -O exa.zip
unzip exa.zip

# Move downloaded files
sudo mv bin/exa /usr/local/bin
sudo mv man/* /usr/share/man/man1
sudo mv completions/exa.zsh /usr/local/share/zsh/site-functions

cd $HOME
rm -rf installations
