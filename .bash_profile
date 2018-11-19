# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

CLICOLOR=1
EDITOR=vim
PATH=$HOME/.local/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

export PATH EDITOR CLICOLOR

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
