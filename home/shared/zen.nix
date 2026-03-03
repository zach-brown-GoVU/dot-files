{ config, pkgs, ... }:

{
  # On macOS, Zen Browser is installed via Homebrew; on Linux, use nixpkgs
  home.packages = if pkgs.stdenv.isDarwin then [] else [ pkgs.zen-browser ];
}
