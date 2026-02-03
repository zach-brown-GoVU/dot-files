if status is-interactive
# Commands to run in interactive sessions can go here
  # -- Starship --
  starship init fish | source
  enable_transience

  # -- Nix --
  alias drs="sudo darwin-rebuild switch"
  
  # -- zoxide --
  alias cd="z"
  zoxide init fish | source

  # -- eza --
  alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

  # -- bat --
  alias cat="bat"

  # -- fzf --
  fzf --fish | source
end
