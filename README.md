# System configuration

Simple system configuration using [Nix](https://nixos.org/nix/). With nix, the system configuration is declarative and reproducible.

## Installation

1. Install nix and build required packages with home-manager.

    ```bash
    ./scripts/install-nix.sh
    ```

## Update home packages

Update the `home.nix` file and run the following command to update the packages.

```bash
./scripts/update.sh
```

## Update nix config

Open `/etc/nix/nix.conf` and add the following line to enable the binary cache and flake.

```text
experimental-features = nix-command flakes
keep-derivations = true
keep-outputs = true
```

## Windows configurations

Install windows terminal & set up oh-my-posh [link](https://ohmyposh.dev/docs/installation/windows).

Config themes, material theme is recommended personally.
