{ pkgs, lib, ... }: {
  imports = [
    ./network.nix
    ./users.nix
  ];

  boot = rec {
    kernelPackages = pkgs.linuxPackages_zen;
    # kernelPackages =
    #   let
    #     version = "6.8.6";
    #     suffix = "zen1"; # use "lqx1" for linux_lqx
    #   in
    #   pkgs.linuxPackagesFor (pkgs.linux_zen.override {
    #     inherit version suffix;
    #     modDirVersion = lib.versions.pad 3 "${version}-${suffix}";
    #     src = pkgs.fetchFromGitHub {
    #       owner = "zen-kernel";
    #       repo = "zen-kernel";
    #       rev = "v${version}-${suffix}";
    #       sha256 = "sha256-Vg40qLU5sZjBEesWitqZd9jC1wUFyk+fR03yuVcfQyQ=";
    #     };
    #   });

    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    initrd.kernelModules = [
      "amdgpu"
      "dm-cache-default"
      "acpi-cpufreq"
      "cpufreq-ondemand"
    ];
    kernelParams = [
      "video=HDMI-A-1:1920x1080@100"
      "selinux=0"
      "apm=on"
      "acpi=on"
    ];
  };

  zramSwap.enable = true;

  time.timeZone = "Asia/Jakarta";

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;
  };

  services.pipewire.extraConfig.pipewire."92-low-latency" = {
  context.properties = {
    default.clock.rate = 48000;
    default.clock.quantum = 32;
    default.clock.min-quantum = 32;
    default.clock.max-quantum = 32;
  };
};

  services.lvm.boot.thin.enable = true;
  hardware.graphics.enable = true;
  # hardware.amdgpu.amdvlk.enable = true;
  # hardware.opengl.enable = true;
  # hardware.opengl.driSupport = true;
  hardware.opentabletdriver.enable = true;
  powerManagement.cpuFreqGovernor = "performance";
}
