# .bash_profile

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

CLICOLOR=1
EDITOR=vi
PATH=$HOME/bin:$PATH

export PATH EDITOR CLICOLOR
