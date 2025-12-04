
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# 플러그인
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions

# 각종 cli 도구들
# fzf
eval "$(fzf --zsh)"

# zoxide
eval "$(zoxide init zsh)"

# fnm
eval "$(fnm env --use-on-cd)"

# starship
eval "$(starship init zsh)"

# alias
alias ls="eza"
alias ll="eza -la"
alias cat="bat"
alias vim="nvim"
alias vi="nvim"
alias s="source ~/.zshrc"
alias zc="vi ~/.zshrc"
alias c="claude"
alias lg="lazygit"

# 프로젝트명만 출력해서 선택
alias gls='glab repo list --mine -P 100 -F json | jq -r ".[].ssh_url_to_repo" | fzf | pbcopy && echo "copied!"'

# 프로젝트명으로 clone cli 출력
alias glc='print -z "git clone $(glab repo list --mine -P 100 -F json | jq -r ".[].ssh_url_to_repo" | fzf)"'


