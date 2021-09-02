#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export SPICETIFY_INSTALL="/home/spheal/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export DOOMDIR="/home/spheal/.config/doom/"
export GTK_THEME="Arc-Dark"
export GPG_TTY=$(tty)
export GCM_CREDENTIAL_STORE=gpg
PS1='[\u@\h \W]\$ '
exec fish
