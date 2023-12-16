#!/bin/bash
sudo apt-get install stow -y
sudo apt install curl htop python3 unzip -y
sudo apt install neofetch -y
sudo apt install dos2unix -y
sudo apt install hexcurse -y
sudo apt install figlet -y
sudo apt install aria2 -y
sudo apt install tldr -y
sudo apt install default-jdk -y
sudo apt install golang-go -y
sudo apt install cargo -y
sudo apt install ripgrep -y
sudo apt install fzf -y

cargo install --locked procs bat eza fd-find zoxide

# setup dot-files
git clone --depth 1 https://github.com/yazdipour/dot-files
ln -s ~/dot-files/zsh/.zshrc  ~/.zshrc
ln -s ~/dot-files/tmux/.tmux.conf ~/.tmux.conf

# tmux
sudo apt install tmux -y
wget https://raw.githubusercontent.com/yazdipour/dot-files/master/.tmux.config -O ~/.tmux.conf #copy configs here and then kill server
git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux kill-server

# ssh
sudo apt install openssh-server -y
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

#zsh
sudo apt install zsh -y
curl -L git.io/antigen > $HOME/antigen.zsh
wget https://raw.githubusercontent.com/yazdipour/dot-files/master/.zshrc -O ~/.zshrc
dos2unix ~/.zshrc

# Copilot
npm install -g @githubnext/github-copilot-cli
github-copilot-cli auth

#############
#### VIM ####
#############
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo mv ./nvim.appimage /usr/local/bin/nvim
sudo chmod +x /usr/local/bin/nvim
# Kickstart.NVIM
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

###############
#### More? ####
###############
pip install yt-dlp

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# font
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip
