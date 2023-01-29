#!/bin/bash
if [[(-f /usr/bin/nvim)]]; then 
{
    printf "\nneovim alredy installed"
}
else {
    sudo apt install neovim 
}
fi 
if [[(-f ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim )]]; then 
{
    printf "\nplugin manager alredy installed"
}
else {
  
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

}
fi 
printf "Installing Neovim Vscode theme"

curl -o nvim.zip  -L https://github.com/aruncs31s/neovim-vscode-theme/raw/main/nvim.zip
unzip nvim.zip 
mv nvim ~/.config


