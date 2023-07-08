#!/bin/bash

# Override the default config with our config.
for nix_file in \
    "configuration.nix" \
    "git.nix" \
    "home.nix" \
    "neovim.nix" \
    "zsh.nix"; do
    echo "Overriding $nix_file"
    cp $nix_file ~/.config/nixpkgs/$nix_file
done


# build the home environment
home-manager switch
