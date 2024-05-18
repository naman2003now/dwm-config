{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  buildInputs = with pkgs; [ gcc xorg.libX11 xorg.libXinerama xorg.libXft];
  name = "dwm";
  version = "6.5";
  src = ./.;
  buildPhase = "make";
  installPhase = ''
    mkdir -p $out/bin/
    install -m755 dwm $out/bin/
  '';
}
