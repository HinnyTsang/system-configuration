{ config, pkgs, ... }:

{
  imports = [ ./git.nix ./configuration.nix ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "hinny";
  home.homeDirectory = "/users/hinny";
  home.stateVersion = "22.11";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [ direnv nixfmt xh zlib ];
}
