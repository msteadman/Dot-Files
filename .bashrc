# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

alias rm='rm -i'  # a little self-protection
alias ll='ls -lah'
alias tree='tree -C -I ".DS_Store|\.git|\.svn|*.pyc|_site|.sass-cache" -a'

# pew
alias cdvirtualenv='cd $VIRTUAL_ENV'
alias cdsitepackages='cd $(pew sitepackages_dir)'
alias cdproject='cd $(cat $VIRTUAL_ENV/.project)'

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
export PS1="[ \u @ \h | \w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\$(parse_git_branch) ]\n${ps1_context}\$ "

# how about a little color?
if [ -f $HOME/Projects/Dot-Files/solarized_colors.sh ]; then
    . $HOME/Projects/Dot-Files/solarized_colors.sh
    alias colors='echo ${YELLOW}Yellow ${BASE0}${ORANGE}Orange ${BASE0}${RED}Red ${BASE0}${MAGENTA}Magenta ${BASE0}${VIOLET}Violet ${BASE0}${BLUE}Blue ${BASE0}${CYAN}Cyan ${BASE0}${GREEN}Green${BASE0}'
    export PS1="[ \[${BOLD}${CYAN}\]\u\[$BASE0\] @ \[$CYAN\]\h \[$BASE0\]| \[$BLUE\]\w\[$BASE0\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$YELLOW\]\$(parse_git_branch)\[$BASE0\] ]\n\[$ORANGE\]\$(ps1_context)\[$BASE0\]\$ \[$RESET\]"
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

ENV_DJANGO=$HOME/Projects/Python/Env-Django
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh
