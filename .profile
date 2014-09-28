
alias ll='ls -lah'
alias tree='tree -C -I ".DS_Store|\.git|*.pyc|_site|.sass-cache" -a'

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

export CLICOLOR=1
export EDITOR=vi
export PATH=$HOME/bin:/usr/local/bin:$PATH

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

VIRTUALENV_WRAPPER=/usr/local/bin/virtualenvwrapper_lazy.sh
source $VIRTUALENV_WRAPPER
