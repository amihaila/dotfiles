GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto git verbose"

source ~/.git-completion.sh

# Without date & time
export PS1='\[\n\033[96m\]\u\[\033[m\]@\[\033[92m\]\h:\[\033[33;1m\]\w\[\033[m\] $(__git_ps1 "(%s)")\n> '

# With date & time
#export PS1='
#\[\e[30m\]-- `date -u "+%a, %b %d %Y, %H:%M:%S (UTC),"` `TZ=America/New_York date "+%H:%M:%S (EST)"` --
#\[\e[0;34m\]\u\[\e[0;32m\]@\h\[\e[0;35m\]:\w\[\e[0m\] \[\e[31m\] \[\e[0m\] $(__git_ps1 "(%s)")\n> '

export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -Gh'
alias ll='ls -l'
alias l='ls -alrt'
alias c='clear'
alias x='exit'
alias r='reset'
alias t='tree'
alias rm='rm -i'

alias .v='vi ~/.bash_profile'
alias .b='. ~/.bash_profile'
alias .vr='vi ~/.vimrc'

alias grep='egrep -I --color'

set -o vi

