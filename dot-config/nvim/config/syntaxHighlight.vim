" +---------------------------------------------------+
" | Config file for special cases of syntax highlight |
" +---------------------------------------------------+
  
" i3 
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
  au BufNewFile,BufRead ~/dotfiles/dot-config/i3/config set filetype=i3config
aug end
" Rofi 
au BufNewFile,BufRead /*.rasi setf css
" zsh 
au BufRead,BufNewFile ~/dotfiles/zsh-config/* set filetype=zsh
" .launch file as xml
au BufRead,BufNewFile *.launch set filetype=xml
au BufRead,BufNewFile *.launch set syntax=xml
au BufRead,BufNewFile *.urdf set filetype=xml
au BufRead,BufNewFile *.urdf set syntax=xml

