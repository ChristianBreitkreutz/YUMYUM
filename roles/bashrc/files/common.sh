echo "load ansible created tools"
# tools aliases
function ag() {
  grep -rnw '.' -e "$1"
}
# ls aliases
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -A'
alias l.='ls -d .* --color=auto'

# cd
alias cd..='cd ..'
alias ..='cd ..'

# rests
alias tailf='tail -f -n50'
alias ping='ping -c 3'
alias pingg='ping -c 1 www.google.com'
alias df='df -H'

alias catssh='cat ~/.ssh/*.pub'

EDITOR=vim
