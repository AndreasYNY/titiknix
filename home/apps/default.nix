{ pkgs, config, lib, ... }:
let
  # unstable = import <nixpkgs-unstable> {
  #   config = config.nixpkgs.config;
  # };
in
{

  imports = [
    ./firefox
    ./foot
    # ./git
    ./hypr
    ./mako
    ./nvim
    ./obs
    ./rofi
    ./vscode
    ./waybar
    ./stylix
  ];
  nixpkgs.config = {
    allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
      "spotify"
      "osu-lazer-bin"
      "vscode"
      "mongodb-compass"
      "rar"
      "steam"
      # "ida-free"
    ];
  };

  home.packages = with pkgs; [
    protonup-qt
    mpv
    android-tools
    yazi
    btop
    rofi-wayland
    tmux
    keepassxc
    alacritty
    kitty
    motrix
    zip
    unzip
    rar
    python3
    github-desktop
    tor-browser
    lutris-free
    file-roller
    mongodb-compass
    vesktop
    spotify
    freetube
    thunderbird
    slurp
    grim
    wget
    pavucontrol
    rustup
    fastfetch
    termusic
    appimage-run
    # unstable.zed-editor
    # unstable.osu-lazer-bin
    orchis-theme
    opentabletdriver
    # ida-free
    # sayonara

    # some dev app
    nodejs_18
    corepack_18
    cutter
  ];
}
