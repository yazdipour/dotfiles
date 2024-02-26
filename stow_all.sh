#!/bin/bash

# Navigate to your dotfiles directory
cd $HOME/dotfiles || exit

# List all directories (configurations) and stow them
for dir in */ ; do
    if [ "$dir" == "etc/" ]; then
        continue
    fi
    stow -v $dir
done
