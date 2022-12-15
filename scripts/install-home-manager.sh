#!/bin/bash

# Add channel for home manager.
nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz home-manager
nix-channel --update

# Install home manager
nix-shell '<home-manager>' -A install

# Sorce the home session file
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# Override the default config with our config.
cp ./home.nix ~/.config/nixpkgs/home.nix

# build the home environment
home-manager build
