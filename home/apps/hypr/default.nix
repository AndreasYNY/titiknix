{ pkgs, ... }: {
  xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;
  # wayland.windowManager.hyprland = {
  #   enable = true;
  #   xwayland.enable = true;

  #   settings = {
  #     "$mainMod" = "SUPER";
  #     input = {
  #       kb_layout = "us";
  #       sensitivity = -0.5;
  #       accel_profile = "flat";
  #     };

  #     env = [
  #       "XDG_CURRENT_DESKTOP,Hyprland"
  #       "XDG_SESSION_TYPE,wayland"
  #       "XDG_SESSION_DESKTOP,Hyprland"
  #       "XCURSOR_SIZE,36"
  #       "NIXOS_OZONE_WL,1"
  #       "QT_QPA_PLATFORM,wayland"
  #       # "SSH_AUTH_SOCK,$XDG_RUNTIME_DIR/ssh-agent.socket"
  #       "WLR_DRM_NO_ATOMIC,1"
  #     ];

  #     exec-once = [
  #       "waybar"
  #     ];

  #     general = {
  #       gaps_in = 2;
  #       gaps_out = 5;
  #       border_size = 0;

  #       layout = "dwindle";

  #       allow_tearing = true;
  #     };

  #     decoration = {
  #       rounding = 10;
  #       blur = {
  #         enabled = false;
  #       };
  #       drop_shadow = false;
  #     };

  # windowrulev2 = [
  # 	"immediate, class:^(osu!)$"

  # ];

  #     dwindle = {
  #       pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
  #       preserve_split = true; # you probably want this
  #     };

  #     master = {
  #       new_is_master = true;
  #     };

  #     animations = {
  #       enabled = true;

  #       bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

  #       animation = [
  #         "windows, 1, 7, myBezier"
  #         "windowsOut, 1, 7, default, popin 80%"
  #         "border, 1, 10, default"
  #         "borderangle, 1, 8, default"
  #         "fade, 1, 7, default"
  #         "workspaces, 1, 6, default"
  #       ];
  #     };

  #     misc = {
  #       disable_hyprland_logo = true;
  #       disable_splash_rendering = true;
  #     };
  #     # 
  #     # MONITOR SETTIUNG #########################################################################################################
  #     # 
  #     monitor = [
  #       "HDMI-A-1, highrr, auto,1 "
  #       "eDP-1, disabled"
  #     ];

  #     bind = [
  #       # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
  #       "$mainMod, RETURN, exec, alacritty"
  #       "$mainMod, C, killactive, "
  #       #$mainMod, M, exit, 
  #       "$mainMod, E, exec, dolphin"
  #       "$mainMod, V, togglefloating, "
  #       "$mainMod, SPACE, exec, rofi -show drun -show-icons"
  #       ", Print ,exec, grim -g $(slurp)"
  #       "$mainMod, J, togglesplit," # dwindle
  #       "$mainMod, P, exec, killall -SIGUSR2 waybar"
  #       # Move focus with mainMod + arrow keys
  #       "$mainMod, a, movefocus, l"
  #       "$mainMod, d, movefocus, r"
  #       "$mainMod, w, movefocus, u"
  #       "$mainMod, s, movefocus, d"

  #       #$mainMod Z, a, movewindow, l
  #       #$mainMod Z, d, movewindow, r
  #       #$mainMod Z, w, movewindow, u
  #       #"$mainMod Z, s, movewindow, d"

  #       # Switch workspaces with mainMod + [0-9]
  #       "$mainMod, 1, workspace, 1"
  #       "$mainMod, 2, workspace, 2"
  #       "$mainMod, 3, workspace, 3"
  #       "$mainMod, 4, workspace, 4"
  #       "$mainMod, 5, workspace, 5"
  #       "$mainMod, 6, workspace, 6"
  #       "$mainMod, 7, workspace, 7"
  #       "$mainMod, 8, workspace, 8"
  #       "$mainMod, 9, workspace, 9"
  #       "$mainMod, 0, workspace, 10"

  #       # Move active window to a workspace with mainMod + SHIFT + [0-9]
  #       "$mainMod SHIFT, 1, movetoworkspace, 1"
  #       "$mainMod SHIFT, 2, movetoworkspace, 2"
  #       "$mainMod SHIFT, 3, movetoworkspace, 3"
  #       "$mainMod SHIFT, 4, movetoworkspace, 4"
  #       "$mainMod SHIFT, 5, movetoworkspace, 5"
  #       "$mainMod SHIFT, 6, movetoworkspace, 6"
  #       "$mainMod SHIFT, 7, movetoworkspace, 7"
  #       "$mainMod SHIFT, 8, movetoworkspace, 8"
  #       "$mainMod SHIFT, 9, movetoworkspace, 9"
  #       "$mainMod SHIFT, 0, movetoworkspace, 10"

  #       # Scroll through existing workspaces with mainMod + scroll
  #       "$mainMod, mouse_down, workspace, e+1"
  #       "$mainMod, mouse_up, workspace, e-1"

  #       "$mainMod, K , workspace, e-1"
  #     ];

  #     bindm = [
  #       "$mainMod, mouse:272, movewindow"
  #       "$mainMod, mouse:273, resizewindow"
  #     ];

  #     binde = [
  #       "$mainMod SHIFT, w, resizeactive, 0 -50"
  #       "$mainMod SHIFT, s, resizeactive, 0 50"
  #       "$mainMod SHIFT, a, resizeactive, -50 0"
  #       "$mainMod SHIFT, d, resizeactive, 50 0"
  #     ];

  #   };
  # };
}
