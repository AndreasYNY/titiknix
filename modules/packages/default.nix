{ pkgs, lib, ... }: {
  imports = [
    ./hyprland.nix
    ./steam.nix
    ./docker.nix
    ./ollama.nix
    ./syncthing.nix
    # ./stylix.nix
  ];

  nixpkgs.config.allowUnfree = true;

  programs.ssh.startAgent = true;
  programs.nix-ld.enable = true;

  services.gnome.gnome-keyring.enable = true;

  services.libinput.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    home-manager
    nixpkgs-fmt
    cryptsetup
    gamemode
    p7zip
    # thin-provisioning-tools
    osu-lazer-bin
    wineWowPackages.waylandFull
    winetricks
    git
    nautilus
  ];

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
