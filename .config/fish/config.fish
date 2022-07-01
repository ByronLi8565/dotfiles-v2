if status is-interactive
	starship init fish | source
	zoxide init --no-aliases fish | source
end
export PATH="$PATH:$HOME/.spicetify"
function vterm_printf;
    if begin; [  -n "$TMUX" ]  ; and  string match -q -r "screen|tmux" "$TERM"; end 
        # tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
    else if string match -q -- "screen*" "$TERM"
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$argv"
    else
        printf "\e]%s\e\\" "$argv"
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/spheal/dev/miniforge/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

