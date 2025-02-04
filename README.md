# dotfiles

```sh
git clone --depth=1 https://github.com/yazdipour/dotfiles ~/dotfiles
cd ~/dotfiles; stow -v 2 -t $HOME/.config .config/
```

## Helper

```sh
stow <dir>

#Don’t forget to stow every time you sync!
# stow <packagename> # activates symlink
# stow -n <packagename> # trial runs or simulates symlink generation. Effective for checking for errors
# stow -D <packagename> # delete stowed package
# stow -R <packagename> # restows package


# if dos2unix is needed
sudo apt-get install dos2unix
dos2unix .zshrc
```
