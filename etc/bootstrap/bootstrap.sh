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

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ssh
sudo apt install openssh-server -y
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

# tmux
#sudo apt install tmux -y ## for now tmux on ubuntu repos are old, use brew
brew install tmux
git clone --depth 1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux kill-server

#zsh
sudo apt install zsh -y
curl -L git.io/antigen > $HOME/antigen.zsh

# VIM
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo mv ./nvim.appimage /usr/local/bin/nvim
sudo chmod +x /usr/local/bin/nvim
## Kickstart.NVIM
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# font
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip

# setup dotfiles
# ln -s ~/dotfiles/zsh/.zshrc  ~/.zshrc
# ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
#dos2unix ~/.zshrc
