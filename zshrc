ZSH_TMUX_AUTOSTART=true
ZSH_THEME='powerlevel10k/powerlevel10k'

plugins=(
  bundler
  gem
  git
  gitignore
  python
  rails
  rake-fast
  rbenv
  ruby
  tmux
  vundle
)

export PATH="/usr/local/bin:$PATH"

export ZSH='/home/jonas/.oh-my-zsh'
export TERM='xterm-256color'

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

hash -d fu="$HOME/dev"

alias reload='source ~/.zshrc; p10k reload'
alias cls='clear'
alias wttr='curl "en.wttr.in/?0Q"'
alias git='hub'
alias gdf='git diff'
alias yolo='git commit -m "$(curl -s http://whatthecommit.com/index.txt)"'
alias empty='git commit --allow-empty -m "$(curl -s http://whatthecommit.com/index.txt)"'
alias fu='~fu'

setopt cdablevars

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
