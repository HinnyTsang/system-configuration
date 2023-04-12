#!/bin/bash

# Override the default config with our config.
for nix_file in \
    "configuration.nix" \
    "git.nix" \
    "home.nix" \
    "zsh.nix"; do
    echo "Overriding $nix_file"
    cp $nix_file ~/.config/nixpkgs/$nix_file
done

# Override the default config with our config.
cp ./dotfiles/.* ~/

# build the home environment
home-manager switch
