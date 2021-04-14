# Dotfiles
Collection of configuration files to link using **Stow GNU**.
**st**, **surf** and **tabbed** folders are programs from suckles.org that need to be recompiled and install when they are modified.
## Usage with Stow:
### For dot-config:
Use `stow --target=$HOME/.config dot-config`, add `-v` to verbose and `-R` before `dot-config` to replace existing symlinks.
### For bash-config:
Use `stow bash-config --dotfiles`, `--dotfiles` replace `dot-` with `.`
### For zsh-config:
Use `stow zsh-config --dotfiles`, `--dotfiles` replace `dot-` with `.`
### For Xfiles:
Use `stow Xfiles --dotfiles`, `--dotfiles` replace `dot-` with `.`
### For xorg.conf.d
Use `sudo stow --target=/etc/X11/xorg.conf.d xorg.conf.d`, contains configuration to use always NVIDIA graphics.
Use as superuser because of the target directory.

## Configuration for Arch
Executing **myConfigArch.sh** installs everything (stow, zsh, i3, etc.), links files with stow, installs dmenu and yay (with polybar, tdrop and picom).

## Configuration for Ubuntu 18.04
Change to branch `ubuntu-18-04` and execute `.sh` files to autoinstall.
