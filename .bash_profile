# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

ENV_DJANGO=$HOME/Projects/Python/Env-Django
CLICOLOR=1
EDITOR=vim
PATH=$HOME/.local/bin:$PATH

export PATH EDITOR CLICOLOR ENV_DJANGO

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
