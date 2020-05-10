# To install nvim https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu
sudo -s
apt install curl tmux htop zsh neofetch python3 neovim python-neovim python3-neovim
# ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
apt install zsh-syntax-highlighting

# ssh
apt install openssh-server
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

# vimplug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# to create config file for neovim
mkdir ~/.config; mkdir ~/.config/nvim; touch ~/.config/nvim/init.vim 
pip install jedi #auto-comp plugin - options of vim https://github.com/deoplete-plugins/deoplete-jedi

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
