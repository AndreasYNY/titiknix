{pkgs, ...}: {
    stylix = {
      enable = true;
      polarity = "dark";
      base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-dark.yaml";
      image = ./Type.png;
      cursor = {
        package = pkgs.quintom-cursor-theme;
      };
      targets = {
        fish.enable = false;
        #vscode.enable = false;
      };
  };
}
