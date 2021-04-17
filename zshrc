ZSH_TMUX_AUTOSTART=true
ZSH_THEME='powerlevel10k/powerlevel10k'

plugins=(
  bundler
  docker
  docker-compose
  gem
  git
  gitignore
  pip
  python
  rails
  rake-fast
  rbenv
  ruby
  tmux
  vundle
  zsh_reload
)

export PATH="/usr/local/bin:$PATH"

export ZSH='/home/jonas/.oh-my-zsh'
export TERM='xterm-256color'

export FZF_DEFAULT_COMMAND='ack -g ""'

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

hash -d fu="$HOME/Projects"
hash -d fo="$HOME/Gists"

alias fu='~fu'
alias fo='~fo'

setopt cdablevars

alias myip='curl http://ipecho.net/plain; echo'
alias reload='src && p10k reload'
alias rld='reload'
alias ffs='sudo !!'
alias cls='clear'
alias server='python -m SimpleHTTPServer 8000'
alias wttr='curl "en.wttr.in/?0Q"'
alias git='hub'
alias gdf='git diff'
alias yolo='git commit -m "$(curl -s http://whatthecommit.com/index.txt)"'
alias empty='git commit --allow-empty -m "$(curl -s http://whatthecommit.com/index.txt)"'

qr() {
  echo $1 | curl -F-=\<- qrenco.de
}

fortune

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
