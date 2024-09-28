{ pkgs, config, lib, ... }:
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
    motrix
    zip
    unzip
    rar
    python3
    python312Packages.tkinter
    github-desktop
    tor-browser
    jetbrains.idea-community-bin
    lutris-free
    # file-roller
    vesktop
    spotify
    freetube
    thunderbird
    slurp
    grim
    wget
    pavucontrol
    fastfetch
    appimage-run
    # unstable.zed-editor
    opentabletdriver
    # ida-free
    # sayonara
    jq

    # some dev app
    nodejs_18
    corepack_18
    cutter
  ];
}
