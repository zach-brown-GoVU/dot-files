{ config, pkgs, ... }:

{
  imports = [
    ./home/bat.nix
    ./home/eza.nix
    ./home/fastfetch.nix
    ./home/fish.nix
    ./home/fzf.nix
    ./home/lazygit.nix
    ./home/starship.nix
    ./home/zoxide.nix
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
