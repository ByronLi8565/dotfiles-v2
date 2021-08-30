#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export SPICETIFY_INSTALL="/home/spheal/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export DOOMDIR="/home/spheal/.config/doom/"
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
exec fish
