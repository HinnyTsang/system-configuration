#!/bin/bash

# Format the nix files
for nix_file in \
    "configuration.nix" \
    "git.nix" \
    "home.nix"; do
    echo "================================"
    echo "= lint checking for $nix_file ..."
    nixfmt <$nix_file >temp.nix
    if [[ $(diff "$nix_file" "temp.nix") ]]; then
        diff "$nix_file" "temp.nix"
        echo "Error: $nix_file is not formatted."
        exit 1
    else
        echo "No error dected."
    fi
    echo "================================"
    rm temp.nix
done
