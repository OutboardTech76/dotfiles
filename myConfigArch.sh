# !/bin/bash
# Needed files
sudo pacman -S autoconf automake base binutils bison cmake exa fakeroot feh firefox flex gcc git gtk-chtheme i3-gaps intel-ucode lxappearance m4 make neovim networkmanager nvidia openssh patch pcmanfm pkgconf pulseaudio pulseaudio-alsa python-pip python-pynvim python2 python2-pip ranger refind scrot stow termite texinfo thunderbird vim xclip xorg zathura zathura-djvu zathura-pdf-mupdf zsh w3m
 
#Necessary files nevim
pip install pynvim 
pip2 install pynvim 

#Softlink everything with stow 
stow --target=$HOME/.config -v -R dot-config 
stow  --dotfiles -R -v zsh-config
stow  --dotfiles -R -v Xfiles
sudo stow --target=/etc/X11/xorg.conf.d  -v -R xorg.conf.d

## Install dmenu
cd dmenu
sudo make clean install
cd ..

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
sudo rm -r yay

# Install yay apps
yay -S --noconfirm polybar tdrop-git picom-rounded-corners


