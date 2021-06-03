{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "cs411-compilers";
  buildInputs = [
    nasm
  ];
}
