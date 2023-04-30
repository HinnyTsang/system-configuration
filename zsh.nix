{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      du = "du -ah -d 1";
      ll = "ls -l";
      lzd = "lazydocker";
      lzg = "lazygit";
    };
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
