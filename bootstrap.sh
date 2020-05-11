#!/bin/bash
sudo -s
apt install curl tmux htop zsh neofetch python3 hexcurse bat -y
# ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# ssh
sudo apt install openssh-server -y
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

# nvim
# To install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu
sudo apt-get install software-properties-common
sudo apt update
sudo apt install neovim python3-neovim python3-dev python3-pip -y
# vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# to create config file for neovim
mkdir ~/.config; mkdir ~/.config/nvim; touch ~/.config/nvim/init.vim 
pip3 install jedi #auto-comp plugin - options of vim https://github.com/deoplete-plugins/deoplete-jedi

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
