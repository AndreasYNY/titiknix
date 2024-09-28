{
  networking = {
    networkmanager.enable = true;
    nameservers = [ "1.1.1.1" "9.9.9.9" ];
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
