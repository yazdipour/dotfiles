# .files

```sh
git clone --depth=1 https://github.com/yazdipour/dotfiles ~/.dotfiles
chmod +x ~/dotfiles/stow_all.sh
~/dotfiles/stow_all.sh
# stow --dir=~/.dotfiles --target=~/
#stow -D . #Cleaning up symbolic links
#Don’t forget to stow every time you sync!
```
