#!/bin/bash

# Install Nix
sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume --daemon

# Add channel for home manager.
nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz home-manager
nix-channel --update

# Export NIX_PATH
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}
# echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels\n' >> ~/.bash_profile
# echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels\n' >> ~/.zshenv 

# Install home manager
nix-shell '<home-manager>' -A install

# Sorce the home session file
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# Override the default config with our config.
cp ./home.nix ~/.config/nixpkgs/home.nix

# build the home environment
home-manager build