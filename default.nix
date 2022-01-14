{ pkgs ? import <nixpkgs> {} }: with pkgs;
stdenv.mkDerivation rec {
  version = "0.1";
  pname = "Jump-n-Runner";
  src = ./.;
  buildInputs = [
    php74
  ];
  shellHook = "php -S localhost:8000";
  # buildPhase = "ghc --make xmonadctl.hs";
  # installPhase = ''
  #   mkdir -p $out/bin
  #   cp xmonadctl $out/bin/
  #   chmod +x $out/bin/xmonadctl
  # '';
  meta = with lib; {
    author = "Luca Leon Happel";
    description = "A small Phaser.js game, written by me back in may 2016";
    homepage = "https://github.com/Quoteme/Jump-n-Runner";
    platforms = platforms.all;
    mainProgram = "Jump-n-Runner";
  };  
}
