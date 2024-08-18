{pkgs,...}: {
  programs.hyprland = {
    enable = true;
    # package = pkgs.hyprland.overrideAttrs (old: {
    #   patches = [ ./hypr-patch/patch.txt ];
    # });
    # package = pkgs.hyprland.overrideAttrs (old: {
    #   src = pkgs.fetchFromGitHub {
    #     owner = "hyprwm";
    #     repo = "Hyprland";
    #     rev = "57371b93a058d17affb0ca92f13b8d40582b3ea0";
    #     sha256 = "sha256-n/7fwGvx9F+ENO65DcfI+gZDZnocWj4lvic9OG5vZ98=";
    #   };
    # });
    package = pkgs.hyprland.override {
      legacyRenderer = true;
    };
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hyprcursor
    hyprlock
    hypridle
    hyprpaper
    hyprutils
  ];
}
