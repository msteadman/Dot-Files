# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

ENV_DJANGO=$HOME/Projects/Python/Env-Django
CLICOLOR=1
EDITOR=vim
PATH=$HOME/.local/bin:$PATH

export PATH EDITOR CLICOLOR ENV_DJANGO
