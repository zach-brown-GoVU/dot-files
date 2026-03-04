{ config, pkgs, ... }:

{
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
}
