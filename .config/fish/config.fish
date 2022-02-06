if status is-interactive
	starship init fish | source
	zoxide init --no-aliases fish | source
end
export PATH="$PATH:$HOME/.spicetify"
