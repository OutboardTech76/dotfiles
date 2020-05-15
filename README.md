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

