if status is-interactive
	starship init fish | source
	zoxide init fish | source
end
export PATH="$PATH:$HOME/.spicetify"
