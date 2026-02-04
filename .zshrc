ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit wait lucid for MichaelAquilina/zsh-autoswitch-virtualenv

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::aws
zinit snippet OMZP::ssh

autoload -U compinit && compinit
zinit light Aloxaf/fzf-tab
zinit cdreplay -q

bindkey -v
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' menu search
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'


eval "$(zoxide init zsh --cmd cd)"
eval "$(fzf --zsh)"
eval "$(uv generate-shell-completion zsh)"

alias vi="nvim"
alias ls="eza"
alias ll="eza -l"
alias cat="bat"
alias python="uv run python3"

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

export EDITOR="nvim"

export PATH='/home/mike/.duckdb/cli/latest':$PATH

[ -f ~/.config/.secrets ] && source ~/.config/.secrets
