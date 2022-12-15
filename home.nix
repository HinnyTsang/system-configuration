{ config, pkgs, ... }:

{
  imports = [ ./git.nix ./configuration.nix ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "hinny";
  home.homeDirectory = "/Users/hinny";
  home.stateVersion = "22.05";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    direnv
    docker
    docker-compose
    neovim
    nixfmt
    poetry
    vscode
    xh # for HTTP request.
  ];
}
