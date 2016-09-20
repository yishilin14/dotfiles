# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Auto update without prompting
DISABLE_UPDATE_PROMPT=true

#####################################################
# plugins 
#####################################################

# for the autojump plugin
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

plugins=(git sudo autojump command-not-found)

#####################################################
# alias 
#####################################################
alias -s c=vi
alias -s cpp=vi
alias -s tex=vi
alias zz="source ~/.zshrc"
alias ls="ls -color=auto"

# Smart extract function
extract () {
  if [ $# != 1 ]
  then
    echo
    echo "  Usage: extract [COMPRESSED_FILENAME]"
    echo
  else
    if [ -f $1 ]
    then
      case $1 in
        *.tar)       tar -xvf  $1  ;;
        *.tgz)       tar -xvzf $1  ;;
        *.tar.gz)    tar -xvzf $1  ;;
        *.tbz2)      tar -xvjf $1  ;;
        *.tar.bz2)   tar -xvjf $1  ;;
        *.gz)        gunzip    $1  ;;
        *.bz2)       bunzip2   $1  ;;
        *.zip)       unzip     $1  ;;
        *.7z)        7z x      $1  ;;
        *)           echo "  '$1' file type unknown" ;;
      esac
    else
      echo "  '$1' is not a regular file"
      echo
    fi
  fi
}

include () {
    [[ -f "$1" ]] && source "$1"
}
include .zshrc_private

source $ZSH/oh-my-zsh.sh

