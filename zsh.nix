{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    shellAliases = { ll = "ls -l"; };
    history = {
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "tonotdo";
    };
    localVariables = { EDITOR = "vim"; };
  };

  home.file.".zshrc".text = ''
    source "$HOME/.nix-profile/etc/profile.d/nix.sh"
    eval "$(direnv hook zsh)"
  '';
}
