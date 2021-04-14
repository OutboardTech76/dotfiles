# !/bin/bash
 
# Install Nodejs > 10.12 
mkdir -p $HOME/installations
cd $HOME/installations
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash
 
# Install stow from source
wget -c https://ftp.gnu.org/gnu/stow/stow-latest.tar.gz -O stow.tar.gz
tar -xvzf stow.tar.gz 
cd stow-*
./configure
make -j8
sudo make install -j8
 
cd $HOME/dotfiles

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y git xclip zsh ranger \
	curl libxinerama-dev nodejs feh cmake-curses-gui \
    lxappearance gtk-chtheme \
    dirmngr apt-transport-https lsb-release ca-certificates


# Symlink dotfiles using stow
mkdir -p $HOME/.config
stow --target=$HOME/.config -v -R dot-config
stow --dotfiles -R -v zsh-config
stow --dotfiles -R -v Xfiles

# Install dmenu
cd dmenu
sudo make clean install
cd ..



# Set zsh as default shell for user and root
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
