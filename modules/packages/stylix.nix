{pkgs, ...}: {
  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/summerfruit-dark.yaml";
    image = ./Type.png;
  };
}