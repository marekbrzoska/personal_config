alias suu='sudo su'
alias desk='cd ~/Pulpit'
alias sch='cd ~/work/reserver/'
alias ls='ls --color -FH'
alias la='ls -hAH'
alias ll='ls -hlH'
alias lla='ls -hAlH'
alias lls='ls -hAlH | less'
alias vimv='vim ~/.vimrc'
alias gvimv='gvim ~/.vimrc'
alias vimb='vim ~/.bashrc'
alias gvimb='gvim ~/.bashrc'
alias tunnel-ii='ssh -f -N -L 12345:hera:22 i209103@tryglaw.ii.uni.wroc.pl'
alias hera-ii-mc='mc /#sh:i209103@localhost:12345/home/i209103'
alias hera-ii='ssh i209103@localhost -p 12345'
alias tag='ctags -R'
alias psg='ps aux | grep'
alias gst='git status'
alias gci='git commit'
alias grs='gvim --servername mbr -S ~/.session.vim'
alias gr='gvim --servername mbr --remote-silent'
alias vr='vim --servername mbr --remote-silent'
alias o=xdg-open
alias du='du -h'
alias du0='du -h --max-depth=0'
alias du1='du -h --max-depth=1'
alias df='df -h'
alias gg="git grep --color"
alias inst='sudo aptitude install'
alias sear='aptitude search'
alias ipy='ipython'

# Make the Caps Lock key be a Control key:
alias mapCL='xmodmap -e "remove lock = Caps_Lock";xmodmap -e "add control = Caps_Lock"'


export HISTSIZE=200000
export HISTIGNORE='&' # & ignores duplicate lines
#export PS1='\[\e[01;32m\]\!:\u@\h:\[\e[01;34m\]\w\$ \[\e[00m\]'
#export PS1='\[\e[01;34m\]\w\n\[\e[01;32m\]\u@\h$ \[\e[00m\]'
if [ $EUID = 0 ]; then
    export PS1='\[\e[01;31m\]\u@\h \[\e[01;34m\]\w\n\$ \[\e[00m\]'
else
    export PS1='\[\e[01;32m\]\u@\h \[\e[01;34m\]\w\n\$ \[\e[00m\]'
fi
#export PS4="\D{%F %T}: "; set -x;
export PATH=$PATH:$HOME/bin:$HOME/.cabal/bin

#export PROMPT_COMMAND="echo \"$(`date +'%Y-%m-%d %X'`) $(`history 1`)\" >> ~/.bash_history.full"
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "


#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi


if [ ! -d $HOME/.vim_backup ]; then
    mkdir $HOME/.vim_backup
fi

clear


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).

# commenting out as it prints irritating message:
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
if [ -f $HOME/.django_bash_completion.sh ]; then
    source $HOME/.django_bash_completion.sh
fi


function gvim () { (/usr/bin/gvim -f "$@" &) }


#VIRTUAL_ENV_WRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
#if [ -f $VIRTUAL_ENV_SCRIPT ] && ! shopt -oq posix; then
#    # virtualenv wrapper
#    source $VIRTUAL_ENV_WRAPPER_SCRIPT
#fi
#export WORKON_HOME=~/.virtualenvs
#source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


# enable ctrl-s
stty -ixon


############################################3


# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


alias deploy="fab -R mbrzoska-api.ospwebtest pack:ospapi deploy_develop:package=ospapi && curl --insecure https://mbrzoska-api.ospwebtest.opera.com/v2/ping && alert 'DEPLOYED mbrzoska-api'"
alias deploy_and_get="fab -R mbrzoska-api.ospwebtest pack:ospapi deploy_develop:package=ospapi  && curl --insecure --cookie /tmp/cookies.txt "
alias get="curl --insecure --cookie /tmp/cookies.txt "
alias copy='xclip -sel clip'

