{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
    viAlias = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins;
      [
        # helper
        copilot-vim

        # nvim-tree
        nvim-web-devicons
        nvim-tree-lua
      ];
  };

  xdg.configFile."nvim/init.lua".source = /home/hinny/system-configuration/dotfiles/.config/nvim/init.lua;
}
