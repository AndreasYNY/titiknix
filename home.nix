{ config, pkgs, ... }: {

  imports = [
    ./home
  ];

  home = {
    username = "bad";
    homeDirectory = "/home/bad";
    stateVersion = "24.05";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch";
    };
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = '' set fish_greeting '';
    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --";
    };
  };
}
