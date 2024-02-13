#!/bin/bash

# Navigate to your dotfiles directory
cd ~/dotfiles || exit

# List all directories (configurations) and stow them
for dir in */ ; do
    stow -v $dir
done
