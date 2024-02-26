set -g fish_greeting

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

