# If not running interactively, don't do anything
[ -z "$PS1" ] && return

#PATH=/bin:/usr/bin:/usr/sbin
PATH=/bin:/usr/bin
[ -d ~/bin ] && PATH=~/bin:$PATH
[ -d /usr/local/bin ] && PATH=$PATH:/usr/local/bin
[ -d /usr/share/bin ] && PATH=$PATH:/usr/share/bin
export PATH

MANPATH=/usr/share/man
[ -d ~/man ] && MANPATH=~/man:$MANPATH
[ -d /usr/local/sml/bin ] && PATH=$PATH:/usr/local/sml/bin
[ -d /usr/local/man ] && MANPATH=$MANPATH:/usr/local/man
[ -d /usr/local/share/man ] && MANPATH=$MANPATH:/usr/local/share/man
export MANPATH

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc).
[ -f /etc/bash_completion ] && . /etc/bash_completion


# GCC Colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

color_prompt=yes
TERM=xterm-256color
PAGER=less
EDITOR=vim
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$ '

#ALIASES ================================================

alias h="history | $PAGER"
alias ls="ls --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias ll="ls -al"
alias l="ls -l"
alias cl="clear && ls"
alias cll="clear && ll"
