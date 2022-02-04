export SPICETIFY_INSTALL="/home/spheal/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export DOOMDIR="~/.config/doom/"
export GTK_THEME="Noita"
export GPG_TTY=$(tty)
export GCM_CREDENTIAL_STORE=gpg
export XDG_DESKTOP_DIR="$HOME/"
export PATH="$PATH:$HOME/.spicetify"
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
xset r rate 300 50
exec fish






