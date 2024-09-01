{
  networking = {
    hostName = "dragon";
    networkmanager.enable = true;
    hosts = {
      "0.0.0.0" = [ 
        "overseauspider.yuanshen.com"
        "osuspider.yuanshen.com"
        "ys-log-upload-os.hoyoverse.com"
        "sg-public-data-api.hoyoverse.com"
        "sdk-log-upload-os.hoyoverse.com"
      ];
    };
  };
}
