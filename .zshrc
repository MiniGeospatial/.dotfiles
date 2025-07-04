zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 10

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

plugins=(
  aws
  fzf
	git
  vi-mode
  ssh
  sudo
  zsh-syntax-highlighting
  zsh-autosuggestions
  autoswitch_virtualenv
)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh --cmd cd )"
eval "$(starship init zsh)"
