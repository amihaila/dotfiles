GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto git verbose"

source ~/.git-completion.sh
# export PS1="\[\n\033[96m\]\u\[\033[m\]@\[\033[92m\]\h:\[\033[33;1m\]\w\[\033[m\]\n"
export PS1='
\[\e[30m\]-- `date -u "+%a, %b %d %Y, %H:%M:%S (UTC),"` `TZ=America/New_York date "+%H:%M:%S (EST)"` --
\[\e[0;34m\]\u\[\e[0;32m\]@\h\[\e[0;35m\]:\w\[\e[0m\] \[\e[31m\] \[\e[0m\] $(__git_ps1 "(%s)")\n> '

export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
alias ls='ls -Gh'
alias ll='ls -l'
alias l='ls -alrt'
alias c='clear'
alias x='exit'
alias r='reset'

alias .v='vi ~/.bash_profile'
alias .b='. ~/.bash_profile'
alias .vr='vi ~/.vimrc'

alias grep='egrep -I --color'

set -o vi

##
# Your previous /Users/alexm/.bash_profile file was backed up as /Users/alexm/.bash_profile.macports-saved_2015-12-10_at_22:44:50
##

# MacPorts Installer addition on 2015-12-10_at_22:44:50: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

#bash srcipt aliases
alias ser="~/dev/scripts/ser.sh"
