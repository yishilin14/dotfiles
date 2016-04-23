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
alias mntcse="sshfs yslin@linux1:/uac/gds/yslin ~/unixfolder"
alias mntgwcse="sshfs yslin@gw.cse.cuhk.edu.hk:/uac/gds/yslin ~/unixfolder"
alias ls="ls -color=auto"

source $ZSH/oh-my-zsh.sh

