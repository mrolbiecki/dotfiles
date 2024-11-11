#!/bin/bash
# ~/dotfiles/setup.sh

# List of all dotfile packages
packages=("zsh" "oh-my-zsh" "geany" "git")

# Go to the dotfiles directory
cd ~/dotfiles || exit

# Run stow for each package
for pkg in "${packages[@]}"; do
    stow "$pkg"
done

echo "Dotfiles have been stowed successfully."
