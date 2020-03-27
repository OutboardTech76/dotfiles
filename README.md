# Dotfiles
Collection of configuration files to link using **Stow GNU**.
# Usage with Stow:
## For dot-config:
Use `stow --target=$HOME/.config dot-config`, add `-v` to verbose and `-R` before `dot-config` to replace existing symlinks.
## For bash-config:
Use `stow bash-config --dotfiles`, `--dotfiles` replace `dot-` with `.`
