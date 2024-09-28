{ pkgs, config, lib, ... }: {
  imports = [
    ./hyprland.nix
    ./steam.nix
    ./docker.nix
    #./ollama.nix
    ./syncthing.nix
  ];


  nixpkgs.config.allowUnfree = true;

  programs.ssh.startAgent = true;
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      xorg.libX11
    ];
  };

  services.gnome.gnome-keyring.enable = true;

  services.libinput.enable = true;
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
  virtualisation.waydroid.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    home-manager
    nixpkgs-fmt
    cryptsetup
    gamemode
    p7zip
    unstable.osu-lazer-bin
    wineWowPackages.waylandFull
    winetricks
    git
    jq
    piper
    libratbag
    tk
    xdelta
    prismlauncher
    lunar-client
    rnote
    #nautilus
  ];

  nix.settings = {
    substituters = [ 
      "https://ezkea.cachix.org"
      "https://hyprland.cachix.org" 
    ];
    trusted-public-keys = [ 
      "ezkea.cachix.org-1:ioBmUbJTZIKsHmWWXPe1FSFbeVe+afhfgqgTSNd34eI="
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
  };

  # fish
  programs.bash = {
    interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };

}
