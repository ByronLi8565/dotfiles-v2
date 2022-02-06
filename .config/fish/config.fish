if status is-interactive
	starship init fish | source
	zoxide init --no-aliases fish | source
    rm -r ~/Downloads 2> /dev/null
end
export PATH="$PATH:$HOME/.spicetify"
