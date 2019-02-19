# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

CLICOLOR=1
EDITOR=vim
PIPENV_SHELL_FANCY=1
GEM_HOME=$HOME/.gem

PATH=$HOME/.gem/ruby/2.3.0/bin:$HOME/.local/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

export PATH EDITOR CLICOLOR PIPENV_SHELL_FANCY GEM_HOME

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
