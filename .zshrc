# Set name of the theme to load.
ZSH_THEME="robbyrussell"

#####################################################
# plugins 
#####################################################

# for the autojump plugin
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

source ~/Dropbox/dotfiles/zsh/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/autojump
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions

    # completions
    zgen load zsh-users/zsh-completions src

    # theme
    zgen oh-my-zsh themes/arrow

    # save all to init script
    zgen save
fi

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
