{ pkgs ? import <nixpkgs> {} }:
let
  lib = pkgs.lib;
in {
  devShell = pkgs.mkShell rec {
    buildInputs = with pkgs; [
      xorg.libX11
      xorg.libXtst
      xorg.libXinerama
      tk
      python312Packages.tkinter
    ];
    LD_LIBRARY_PATH = "${lib.makeLibraryPath buildInputs}";
  };
}