#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# added by Anaconda2 2.4.1 installer
export PATH="/home/yslin/anaconda2/bin:$PATH"