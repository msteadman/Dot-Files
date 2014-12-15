# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias ll='ls -lah'
alias tree='tree -C -I ".DS_Store|\.git|*.pyc|_site|.sass-cache" -a'

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# See https://gist.github.com/datagrok/2199506
function ps1_context {
    # For any of these bits of context that exist, display them and append
    # a space.
    virtualenv=`basename "$VIRTUAL_ENV"`
    for v in "$virtualenv" "$PS1_CONTEXT"; do
        echo -n "${v:+$v }"
    done
}
# export PS1="$(ps1_context)"'\u@\h:\w\$ '
export PS1="$(ps1_context)"'\h:\W \u\$ '

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

ENV_DJANGO=$HOME/Projects/Python/Env-Django
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
