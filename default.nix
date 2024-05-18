{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  buildInputs = with pkgs; [ xorg.libX11 xorg.libXinerama xorg.libXft ];
  name = "dwm";
  version = "6.5";
  src = ./.;
  buildPhase = ''
    make
  '';
  installPhase = ''
    mkdir -p $out/bin/
    mv dwm $out/bin/
  '';
}
