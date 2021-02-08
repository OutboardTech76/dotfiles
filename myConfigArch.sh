# !/bin/bash
# Update PGP keys before installing anything to avoid possible errors when importing them
sudo pacman -Syu archlinux-keyring
sudo pacman -Syu
# Needed files
sudo pacman -S autoconf automake base binutils bison cmake exa fakeroot feh firefox flex gcc git gtk-chtheme i3-gaps intel-ucode lxappearance m4 make neovim nvidia openssh patch pcmanfm pkgconf pulseaudio pulseaudio-alsa python-pip python-pynvim python2 python2-pip ranger scrot stow termite texinfo thunderbird xclip xorg xorg-xinit zathura zathura-djvu zathura-pdf-mupdf zsh w3m npm man-db man-pages
 
#Necessary files nevim
pip install pynvim 
pip2 install pynvim 

#Softlink everything with stow 
mkdir -p $HOME/.config
stow --target=$HOME/.config -v -R dot-config 
stow  --dotfiles -R -v zsh-config
stow  --dotfiles -R -v Xfiles
stow --dotfiles -R -v makepkg
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
rm -rf yay

# Install yay apps
yay -S --noconfirm polybar tdrop-git picom-rounded-corners

# Set zsh as default shell for user and su
# Requires password
chsh -s $(which zsh)
sudo chsh -s $(which zsh)

