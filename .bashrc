# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias rm='rm -i'  # a little self-protection
alias ll='ls -lah'
alias tree='tree -C -I ".DS_Store|\.git|*.pyc|_site|.sass-cache" -a'

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

parse_git_dirty () {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
parse_git_branch () {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

# See https://gist.github.com/datagrok/2199506
function ps1_context {
    # For any of these bits of context that exist, display them and append
    # a space.
    virtualenv=`basename "$VIRTUAL_ENV"`
    for v in "$virtualenv" "$PS1_CONTEXT"; do
        echo -n "${v:+$v }"
    done
}
# export PS1="$(ps1_context)"'\u@\h:\W\$ '
# export PS1="$(ps1_context)"'\h:\W \u\$ '
source ~/Projects/Dot-Files/solarized_colors.sh
export PS1="[ \[${BOLD}${CYAN}\]\u\[$BASE0\] @ \[$CYAN\]\h \[$BASE0\]| \[$BLUE\]\w\[$BASE0\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$YELLOW\]\$(parse_git_branch)\[$BASE0\] ]\n\[$ORANGE\]\$(ps1_context)\[$BASE0\]\$ \[$RESET\]"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

ENV_DJANGO=$HOME/Projects/Python/Env-Django
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
