{
  programs.waybar = {
    enable = true;
    style = ''
      * {
        border: none;
        border-radius: 0;
        font-family: monospace;
        font-weight: bold;
        font-size: 14px;
        min-height: 0;
      }

      window#waybar {
        color: #cdd6f4;
      }

      tooltip {
        border-radius: 10px;
        border-style: solid;
        border-color: #11111b;
      }

      #workspaces button {
        color: #313244;
        margin: 0 5px;
        padding: 0;
      }

      #workspaces button.active {
        color: #a6adc8;
      }

      #workspaces button.focused {
        color: #a6adc8;
      }

      #workspaces button.urgent {
        color: red;
      }

      #workspaces button:hover {
        color: #cdd6f4;
      }

      #custom-resin, #clock, #battery, #pulseaudio, #network, #workspaces, #tray, #backlight {
        padding: 0 5px;
      }
    '';
    settings = {
      mainBar = {
        layer = "top";
        position = "top";

        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "tray" "battery" "pulseaudio" "network" ];

        "hyprland/workspaces" = {
          format = "{name}";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          on-click = "activate";
          sort-by-number = true;
        };

        "tray" = {
          icon-size = 13;
          spacing = 10;
        };

        "battery" = {
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };

          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-plugged = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = [ "󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
        };

        "clock" = {
          format = "{:%I:%M %p %Y/%m/%d}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };

        "network" = {
          format-wifi = "󰖩 {essid}";
          format-ethernet = "";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = " Disconnected";
          tooltip-format-wifi = "Signal Strenght= {signalStrength}% | Down Speed= {bandwidthDownBits} Up Speed= {bandwidthUpBits}";
        };

        "pulseaudio" = {
          # scroll-step = 1; # %, can be a float
          reverse-scrolling = 1;
          format = "{volume}% {icon} {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [ "" "" "" ];
          };
          on-click = "pavucontrol";
          min-length = 13;
        };
      };
    };
  };
}
