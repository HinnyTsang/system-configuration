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
