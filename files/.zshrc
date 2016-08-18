

[[ $- != *i* ]] && return

# Path to your oh-my-zsh installation.
  export ZSH=/home/brady/.oh-my-zsh

#PATH=/bin:/usr/bin:/usr/sbin
PATH=/bin:/usr/bin
[ -d ~/bin ] && PATH=~/bin:$PATH
[ -d /usr/local/bin ] && PATH=$PATH:/usr/local/bin
[ -d /usr/share/bin ] && PATH=$PATH:/usr/share/bin
PATH=$PATH:.
export PATH

MANPATH=/usr/share/man
[ -d ~/man ] && MANPATH=~/man:$MANPATH
[ -d /usr/local/sml/bin ] && PATH=$PATH:/usr/local/sml/bin
[ -d /usr/local/man ] && MANPATH=$MANPATH:/usr/local/man
[ -d /usr/local/share/man ] && MANPATH=$MANPATH:/usr/local/share/man
export MANPATH

color_prompt=yes
if [[ $TERM != "screen-256color" ]] ; then 
   TERM=xterm-256color
fi

PAGER=less
EDITOR=vim


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="Agnoster"

zstyle ':completion:*' completer _expand _complete _correct _approximate


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z zsh-nvm)

# User configuration

  export PATH="/home/brady/bin:/bin:/usr/bin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

setopt nohistverify
# setopt histexpand


tmon

#
#if [[ ! $TERM =~ "screen-256color" ]] ; then 
#
#   #HAS_SESSIONS=$( tmux ls > /dev/null && echo $? )
#   HAS_SESSIONS=$( tmux ls &> /dev/null && echo $? )
#
#   if [[ $HAS_SESSIONS == 0 ]] ; then 
#
#      echo -e "\e[34m Available TMUX sessions: \e[0m "
#
#      STR=$(tmux ls | sed -e 's/^/     /;s/:\s/\t/;s/(.\+\]//')
#      #STR=$(tmux ls) | sed 's/^/   /'
#      
#      echo -e "\e[32m$STR\e[0m "
#      echo ""
#
#
#      echo -e "\e[34m What would you like to do? \e[0m "
#      echo "\e[33m   c - Create new tmux session"
#      echo       "   n - Nothing. Exit to normal ZSH"
#      echo       "   <session-name> - connect to session \e[0m "
#
#      read ANS NAME
#
#      if [[ $ANS == "c" || $ANS == "create" || $ANS == "new" ]] ; then 
#         if [[ $NAME ]] ; then
#            tmux new-session -s $NAME
#         else
#            tmux
#         fi
#      elif [[ $ANS == "n" || $ANS == "q" ]] ; then 
#         clear
#         echo "Starting a non-tmux shell"
#      else 
#         tmux a -t $ANS
#      fi
#   else
#      echo -e "\e[34mThere are no active TMUX sessions.\e[0m"
#      echo -e "\e[33mWould you like to start a new TMUX session? (y/n)\e[1m"
#      read ANS
#      if [[ $ANS == "y" ]] ; then 
#         exec tmux
#      fi
#
#   fi
#
#fi
#
#
