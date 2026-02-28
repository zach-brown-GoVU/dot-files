{ pkgs, ... }:

{
  # Fonts
  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  nixpkgs.config.allowUnfree = true;

  # Homebrew packages
  homebrew = {
    enable = true;
    brews = [
      "fastlane"
    ];
    casks = [
    ];
    onActivation.cleanup = "zap";
  };

  # Enable fish shell
  programs.fish.enable = true;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
}
