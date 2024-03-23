#!/bin/bash

# brew install package-name@version
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew bundle --file=~/dotfiles/Brewfile

# ssh
sudo apt install openssh-server -y
sudo service ssh status
sudo ufw allow ssh
sudo ufw enable

# java
curl -s "https://get.sdkman.io" | bash ; source "$HOME/.sdkman/bin/sdkman-init.sh"
# sdk install java 11.0.11.hs-adpt ; sdk install maven ; sdk install gradle

# Node (dont use brew)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install node

# font
curl https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/CascadiaCode.zip

# nvim instead of vi
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# copilot cli
gh auth login --web -h github.com
gh extension install github/gh-copilot
gh copilot alias --help # to see the alias commands
