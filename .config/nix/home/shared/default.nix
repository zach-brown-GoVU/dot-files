{ config, pkgs, ... }:

{
  imports = [
    ./bat.nix
    ./eza.nix
    ./fastfetch.nix
    ./fish.nix
    ./fzf.nix
    ./ghostty.nix
    ./lazygit.nix
    ./starship.nix
    ./zen.nix
    ./zoxide.nix
  ];
  # Home Manager state version
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # Environment variables
  home.sessionVariables = {
    EDITOR = "vim";
    XDG_CONFIG_HOME = "$HOME/.config";
  };

  home.packages = with pkgs; [
    vim
    jetbrains-toolbox
    obsidian
    spotify
    claude-code
    android-tools
    javaPackages.compiler.temurin-bin.jdk-25
    stow
    vscode
    delta
    tldr
    ruby
    nodejs_20
  ];
}
