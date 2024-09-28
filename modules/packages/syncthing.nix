{
  services.syncthing = {
    enable = true;
    user = "bad";
    overrideDevices = false;
    overrideFolders = false;
    dataDir = "/home/bad/Documents";
    configDir = "/home/bad/.config/syncthing";
  };
}