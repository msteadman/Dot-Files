# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

CLICOLOR=1
EDITOR=vim
PIPENV_SHELL_FANCY=1

#PATH=$HOME/.local/bin:$PATH
PATH=$HOME/.local/bin:/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin:$PATH

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

export PATH EDITOR CLICOLOR PIPENV_SHELL_FANCY

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
