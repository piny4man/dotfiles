set -g fish_greeting

function wrap_long_lines
    set max_width (math (command printf "%d" (math (command tput cols))))  # Calculate available width
    
    set wrapped_prompt ''
    for word in $STARSHIP_PS1
        if test (string length -w $word) -gt $max_width
            set _wrapped_part (string split -n $max_width $word)[1]
            set wrapped_prompt $wrapped_prompt"$_wrapped_part\n"
        else
            set wrapped_prompt $wrapped_prompt$word' '
        end
    end
    
    echo -n $wrapped_prompt
end

function fish_prompt
    wrap_long_lines
end

if status is-interactive
    set -gx PATH $HOME/bin /usr/local/bin $HOME/.local/bin /home/piny4man/.local/share/solana/install/active_release/bin $PATH
    set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh
    set -gx BUN_INSTALL "$HOME/.bun"
    set -gx PATH "$BUN_INSTALL/bin" $PATH

    set -gx PYENV_ROOT "$HOME/.pyenv"
    status --is-interactive; and command -v pyenv >/dev/null; or set -gx PATH "$PYENV_ROOT/bin" $PATH
    pyenv init - | source
end

zoxide init fish | source
starship init fish | source

