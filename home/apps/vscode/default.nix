{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    # package = pkgs.vscodium;
    #package = pkgs.vscode.override {
    #  commandLineArgs = "--disable-features=WaylandFractionalScaleV1";
    #};
    # args = "--disable-features=WaylandFractionalScaleV1";
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
      #yzhang.markdown-all-in-one
    ];

    userSettings = {
      "editor.minimap.enabled" = false;
      "workbench.activityBar.location" = "hidden";
      "window.menuBarVisibility" = "toggle";
      "breadcrumbs.enabled" = false;
      "editor.stickyScroll.enabled" = false;
      "editor.renderWhitespace" = "none";
      "editor.renderControlCharacters" = false;
      "workbench.editor.showTabs" = "none";
      "editor.glyphMargin" = false;
      "files.autoSave"= "afterDelay";
      "telemetry.telemetryLevel"= "off";
    };
  };
}
