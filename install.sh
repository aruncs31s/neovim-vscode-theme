#!/bin/bash
if [[(-f /usr/bin/nvim)]]; then 
{
    printf " neovim ✓\n"
}
else {

    printf "Installing neovim \n"
    sudo apt install neovim -y &>/dev/null
    printf " neovim ✓\n"

}
fi
if [[(-f /usr/bin/node)]]; then 
{
    printf " node ✓\n"
}
else {
    printf " Installing node \n"
    sudo apt install nodejs -y &>/dev/null
    printf " node ✓\n"

}
fi 

if [[(-f ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim )]]; then 
{
    printf " plugin manager ✓\n"
}
else {
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

}
fi 
printf " Installing Neovim Vscode theme\n"
curl -o nvim.zip  -L https://github.com/aruncs31s/neovim-vscode-theme/raw/main/nvim.zip &>/dev/null 
unzip nvim.zip 
mv nvim ~/.config 
printf " Neovim vscode theme ✓\n"
