let
  file = ./chromium.conf;
in
{
  home.file."Pictures".source = "/home/bad/Drive/Pictures";
  home.file."Documents".source = "/home/bad/Drive/Documents";
  home.file."Music".source = "/home/bad/Drive/Music";
  home.file."Projects".source = "/home/bad/Drive/Projects";
  home.file."Downloads".source = "/home/bad/Drive/Downloads";

}
