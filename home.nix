{ config, pkgs, ... }: {

  imports = [
    ./home
  ];

  home = {
    username = "bad";
    homeDirectory = "/home/bad";
    stateVersion = "24.05";
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = '' set fish_greeting '';
    shellAliases = {
      hms = "home-manager switch --flake ~/nix/";
      nrs = "doas nixos-rebuild switch --flake ~/nix/";
    };
  };
}
