# !/bin/bash

sudo apt-get install -y git stow xclip zsh ranger \
	curl libxinerama-dev node-js npm feh cmake-curses-gui \
    lxappearance gtk-chtheme

# Symlink dotfiles using stow
#mkdir -p $HOME/.config
#stow --target=$HOME/.config -v -R dot-config
#stow --dotfiles -R -v zsh-config
#stow --dotfiles -R -v Xfiles

# Install dmenu
cd dmenu
sudo make clean install
cd ..



# Set zsh as default shell for user and root
# chsh -s $(which zsh)
# sudo chsh -s $(which zsh)
