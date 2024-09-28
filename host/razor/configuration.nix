{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules/doas
      ../../modules/fonts
      ../../modules/linux
      ../../modules/packages
      ../../modules/xdg
    ];

  # nix.settings.substituters = [ "https://aseipp-nix-cache.global.ssl.fastly.net" ];

  environment.sessionVariables = {
    SDL_VIDEODRIVER = "wayland";
    NIXOS_OZONE_WL = "1";
    EDITOR = "vim";
  };

  networking.hostName = "razor";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05"; # Did you read the comment? no i did not.
}

