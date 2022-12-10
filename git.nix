{ config, pkgs, ...}:

{
    programs.git = {
        enable = true;
        userEmail = "mhstsangab@connect.ust.hk";
        userName = "HinnyTsang";
    };
}