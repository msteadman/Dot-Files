# .bash_aliases

alias rm='rm -i'    # idiot check

alias ll='ls -lah'
alias la='ls -ah'
alias ld='ls -l | grep "^d"'

alias tree='tree -C -I ".DS_Store|\.git|\.svn|*.pyc|_site|.sass-cache" -a'

alias ping='ping -c 5'

# pew versions of virtualenv commands
alias cdvirtualenv='cd $VIRTUAL_ENV'
alias cdsitepackages='cd $(pew sitepackages_dir)'
alias cdproject='cd $(cat $VIRTUAL_ENV/.project)'
