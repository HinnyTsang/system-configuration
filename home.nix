{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./configuration.nix
    ./neovim.nix
    ./zsh.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "hinny";
  home.homeDirectory = "/home/hinny";
  home.stateVersion = "22.11";

  # nix direnv, used to prevent gc to shells
  programs.direnv = {
    enable = true;
    nix-direnv = { enable = true; };
  };
  # 
  services.xserver.enable = true;
  services.xserver.displayManager = {
    gdm.enable = true;
    gnome.enable = true;
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    docker
    lazydocker
    lazygit
    nix-du
    nix-tree
    nixfmt
    rnix-lsp
    tmux
    xclip
    xh
    zlib
  ];
}
