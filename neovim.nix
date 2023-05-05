{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [

      # helper
      copilot-vim
    ];
  };
}
