{ config, pkgs, ... }:

{
  imports = [
    ./home/fastfetch.nix
    ./home/lazygit.nix
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

  # Fish shell
  programs.fish = {
    enable = true;
    shellAliases = {
      drs = "sudo darwin-rebuild switch --flake ~/.config/nix";
      ls = "eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions";
      cat = "bat";
      cd = "z";
    };
    interactiveShellInit = ''
      eval (/opt/homebrew/bin/brew shellenv)
      enable_transience
      thefuck --alias | source
      fastfetch
    '';
  };

  # Shell tool integrations (handle fish init automatically)
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    # No settings — config managed by stow (starship.toml)
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.bat.enable = true;

  programs.eza.enable = true;

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
