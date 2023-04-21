{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userEmail = "mhstsangab@connect.ust.hk";
    userName = "HinnyTsang";
    aliases = {
      l = "log --graph --abbrev-commit --decorate --format=format:"
        + "'%C(bold blue)%h%C(reset) - %C(bold cyan)%ah%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n'"
        + "'          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all";
      tree = "ls-tree -r --name-only HEAD";
    };
  };
}
