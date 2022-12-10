#!/bin/bash

# Format the nix files
for nix_file in \
    "configuration.nix" \
    "git.nix" \
    "home.nix";
do
    echo "================================"
    echo "===== formatting $nix_file ====="
    echo "================================"
    nixfmt < $nix_file
    nixfmt $nix_file
done;
