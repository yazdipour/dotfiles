# dotfiles

```sh
git clone --depth=1 https://github.com/yazdipour/dotfiles ~/dotfiles
cd ~/dotfiles; sudo chmod +x stow_all.sh; ./stow_all.sh
```

## Stowing

.bashrc or .zshrc are present/needed in $HOME directory, so inside $HOME/dotfiles create a subdirectory with bashrc or zshrc and place the original .bashrc or .zshrc file appropriately inside their folder. GNU Stow understands that the dotfile, when symlinked, will create a symlink-copy in the $HOME directory. For future modifications, file in either locations can be edited. But for simplicity, use $HOME/dotfiles directory.

A complicated example would be a config file located deep inside subfolders: nvim’s or neovim’s init.vim or init.lua file. It is present in $HOME/.config/nvim/init.vim. For Stow to understand, it must be placed like this – $HOME/dotfiles/nvim/.config/nvim/init.vim

```sh
stow bashrc myDIRECTORY

#Don’t forget to stow every time you sync!
# stow <packagename> # activates symlink
# stow -n <packagename> # trial runs or simulates symlink generation. Effective for checking for errors
# stow -D <packagename> # delete stowed package
# stow -R <packagename> # restows package
```

## Random

```sh
# if dos2unix is needed
sudo apt-get install dos2unix
dos2unix .zshrc
```