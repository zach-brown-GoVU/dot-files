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
      "thefuck"
      "fastlane"
    ];
    casks = [
      "ghostty"
      "zen"
    ];
    onActivation.cleanup = "zap";
  };

  # Enable fish shell
  programs.fish.enable = true;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
}
