{ ... }:

{
  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        nerdFontsVersion = "3";
        customIcons = {
          filenames = {
            "README.md" = { icon = "󿩄"; color = "a8a8a8"; };
            "gradlew" = { icon = ""; color = "#9300c4"; };
            "gradlew.bat" = { icon = ""; color = "#9300c4"; };
            ".gitignore" = { icon = ""; color = "#a8a8a8"; };
          };
          extensions = {
            ".kt" = { icon = ""; color = "#cc00cc"; };
            ".gradle" = { icon = ""; color = "#00a0c4"; };
            ".gradle.kts" = { icon = ""; color = "#0055c4"; };
            ".pro" = { icon = ""; color = "#c40007"; };
            ".nix" = { icon = ""; color = "#2651c7"; };
            ".yml" = { icon = ""; color = "#ebb434"; };
          };
        };
      };
    };
  };
}
