{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    settings = {
      shell-integration = "fish";
      command = "/run/current-system/sw/bin/fish";
      background-opacity = 0.85;
      theme = "tokyo-night-moon";
      font-family = "JetBrains Mono";
    };
    themes = {
      tokyo-night-default = {
        background = "#1a1b26";
        foreground = "#c0caf5";
        selection-background = "#283457";
        selection-foreground = "#c0caf5";
        cursor-color = "#c0caf5";
        cursor-text = "#1a1b26";
        palette = [
          "0=#15161e"
          "1=#f7768e"
          "2=#9ece6a"
          "3=#e0af68"
          "4=#7aa2f7"
          "5=#bb9af7"
          "6=#7dcfff"
          "7=#a9b1d6"
          "8=#414868"
          "9=#f7768e"
          "10=#9ece6a"
          "11=#e0af68"
          "12=#7aa2f7"
          "13=#bb9af7"
          "14=#7dcfff"
          "15=#c0caf5"
        ];
      };
      tokyo-night-moon = {
        background = "#222436";
        foreground = "#c8d3f5";
        selection-background = "#2d3f76";
        selection-foreground = "#c8d3f5";
        cursor-color = "#c8d3f5";
        cursor-text = "#222436";
        palette = [
          "0=#1b1d2b"
          "1=#ff757f"
          "2=#c3e88d"
          "3=#ffc777"
          "4=#82aaff"
          "5=#c099ff"
          "6=#86e1fc"
          "7=#828bb8"
          "8=#444a73"
          "9=#ff757f"
          "10=#c3e88d"
          "11=#ffc777"
          "12=#82aaff"
          "13=#c099ff"
          "14=#86e1fc"
          "15=#c8d3f5"
        ];
      };
    };
  };
}
