" +---------------------------------------------+
" | Config file for execute commands inside vim |
" +---------------------------------------------+


" Run xrdb when Xresources are updated
autocmd BufWritePost ~/.Xresources,~/dotfiles/Xresources/dot-Xresources !xrdb %
