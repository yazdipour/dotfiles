#!/bin/bash
sudo apt install curl htop python3 w3m unzip -y
sudo apt install neofetch dos2unix hexcurse figlet bat aria2 tldr -y
sudo apt install default-jdk -y
sudo apt install golang-go -y
sudo apt install cargo -y
cargo install procs
cargo install ripgrep
cargo install fd-find

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# tmux
sudo apt install tmux -y
wget https://raw.githubusercontent.com/yazdipour/dot-files/master/.tmux.config -O ~/.tmux.conf #copy configs here and then kill server
tmux kill-server

# ssh
sudo apt install openssh-server -y
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

# VIM
# To install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim python3-neovim python3-dev python3-pip -y

# vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# to create config file for neovim
mkdir ~/.config; mkdir ~/.config/nvim; touch ~/.config/nvim/init.vim 
wget https://raw.githubusercontent.com/yazdipour/dot-files/master/init.vim -O ~/.config/nvim/init.vim
pip3 install jedi #auto-comp plugin - options of vim https://github.com/deoplete-plugins/deoplete-jedi

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

#zsh
sudo apt install zsh -y
curl -L git.io/antigen > $HOME/antigen.zsh
wget https://raw.githubusercontent.com/yazdipour/dot-files/master/.zshrc -O ~/.zshrc
dos2unix ~/.zshrc