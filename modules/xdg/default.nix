{ lib, pkgs, ... }: {
  xdg = {
    portal = {
      enable = true;
      config.common.default = "*";
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        # xdg-desktop-portal-hyprland
      ];
    };
  };

  environment.systemPackages = with pkgs; [
    xdg-utils
    xdg-user-dirs
  ];
}
