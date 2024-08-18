{ services, ... }: {
  services.mako = {
    enable = true;
    borderSize = 0;
    defaultTimeout = 5000;
  };
}
