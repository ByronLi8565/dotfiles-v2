# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && . "$HOME/.fig/shell/bashrc.pre.bash"
export SPICETIFY_INSTALL="/home/spheal/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export DOOMDIR="~/.config/doom/"
export GPG_TTY=$(tty)
export XDG_DESKTOP_DIR="$HOME/"
export PATH="$PATH:$HOME/.spicetify"
export TMUX_CONFIG="~/.config/tmux/.tmux.conf"
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
xset r rate 300 50 > /dev/null 2>&1
exec fish


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
. "$HOME/.cargo/env"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && . "$HOME/.fig/shell/bashrc.post.bash"
