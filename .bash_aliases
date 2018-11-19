# .bash_aliases

alias rm='rm -i'    # idiot check

alias ll='ls -lAh'
alias la='ls -A'
alias ld='ls -l | grep "^d"'

alias tree='tree -C -I ".DS_Store|\.git|\.svn|*.pyc|_site|.sass-cache" -a'
alias ping='ping -c 5'
alias mkd2='open -a Marked\ 2.app'
alias ytdl='youtube-dl --format mp4'

alias cdvirtualenv='cd $VIRTUAL_ENV'
alias cdproject='cd $(cat $VIRTUAL_ENV/.project)'
