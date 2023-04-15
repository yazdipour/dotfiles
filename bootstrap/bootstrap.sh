#!/bin/bash
sudo apt install curl htop python3 w3m unzip -y
sudo apt install neofetch dos2unix hexcurse figlet bat aria2 tldr -y
sudo apt install default-jdk -y
sudo apt install golang-go -y
sudo apt install cargo -y
cargo install procs
cargo install ripgrep
cargo install fd-find

# font
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip

# VIM
# To install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
sudo apt install neovim python3-neovim python3-dev python3-pip -y

# setup dot-files
git clone https://github.com/yazdipour/dot-files
ln -s ~/dot-files/zsh/.zshrc  ~/.zshrc
ln -s ~/dot-files/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/dot-files/etc/starship.toml ~/.config/starship.toml
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
ln -s ~/dot-files/nvim/astronvim-config/user/ ~/.config/nvim/lua/; nvim +PackerSync

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

# Copilot
npm install -g @githubnext/github-copilot-cli
github-copilot-cli auth
