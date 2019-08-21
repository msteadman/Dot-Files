# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

CLICOLOR=1
EDITOR=vim
PIPENV_SHELL_FANCY=1

PATH=$HOME/.local/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

if command -v rbenv 1>/dev/null 2>&1; then
    eval "$(rbenv init -)"
fi

export PATH EDITOR CLICOLOR PIPENV_SHELL_FANCY

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
