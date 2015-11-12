echo "load ansible created tools"
# tools aliases
function ag() {
  grep -rnw '.' -e "$1"
}
# ls aliases
alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -A'
alias tailf='tail -f -n50'

EDITOR=vim
