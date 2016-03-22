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
alias .2='cd ../..'
alias .3='cd ../../..'
alias ...='cd ../../..'
alias .4='cd ../../../..'
alias ....='cd ../../../..'
alias .5='cd ../../../../..'
alias .6='cd ../../../../../..'

alias .r='cd /root'
alias .h='cd /home'
user="$USER"
alias .d='cd /home/$user/Desktop'
alias .s='cd /home/$user/Schreibtisch'


# rests
alias tailf='tail -f -n50'
alias c='clear'
alias ping='ping -c 5'
alias pingg='ping -c 1 www.google.com'
alias df='df -H'


EDITOR=vim
