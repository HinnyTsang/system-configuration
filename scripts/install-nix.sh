#!/bin/bash

# Install Nix
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Installing Nix on macOS"
    sh <(curl -L https://nixos.org/nix/install) --darwin-use-unencrypted-nix-store-volume --daemon
else
    echo "Installing Nix on Linux"
    sh <(curl -L https://nixos.org/nix/install) --no-daemon
fi

. "$HOME/.nix-profile/etc/profile.d/nix.sh"

# Add channel for home manager.
nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.11.tar.gz home-manager
nix-channel --add https://nixos.org/channels/nixos-22.11 nixpkgs
nix-channel --update

# Export NIX_PATH
echo "Exporting NIX_PATH"
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/hinny/channels${NIX_PATH:+:$NIX_PATH}

# Install home manager
nix-shell '<home-manager>' -A install

# Sorce the home session file
. "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

# Override the default config with our config.
cp *.nix ~/.config/nixpkgs/
cp ./dotfiles/.* ~/
echo 'export NIX_PATH=${NIX_PATH:+$NIX_PATH:}$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/hinny/channels' >>~/.bashrc

# build the home environment
echo "Building home environment"
home-manager build
echo "Done"
