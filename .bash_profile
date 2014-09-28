# .bash_profile
#
#export PATH=".:$HOME/bin:$PATH"
export PATH="$PATH:$HOME/bin"

# Homebrew
export PATH="/usr/local/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Editor of choice
#
# export EDITOR=emacs       # Starts a new emacs
# export EDITOR=emacsclient	# Uses a running emacs. Requires (server-start) in .emacs
export EDITOR=vim
export GIT_EDITOR="subl -n -w" # Overrides core.editor, VISUAL, EDITOR
#export HOMEBREW_EDITOR="subl -n -w" # Overrides VISUAL, EDITOR

alias ls='ls -FG'
alias ll='ls -lh'
alias la='ls -a'

alias tree='tree -C -I ".DS_Store|\.git|*.pyc" -a'
alias ping='ping -c 5'

export PGDATA=/usr/local/var/postgres

# Python/VirtualEnv/Django
export ENV_DJANGO=$HOME/Projects/Python/Env-Django
#export WORKON_HOME=$HOME/.virtualenvs       # default location
export PROJECT_HOME=$HOME/Projects/Python
#export VIRTUALENV_DISTRIBUTE=true

VIRTUALENV_WRAPPER=/usr/local/bin/virtualenvwrapper.sh
DJANGO_BASH_COMPLETION=$HOME/Projects/Python/django_bash_completion
#alias py='source $VIRTUALENV_WRAPPER'
alias py='source $VIRTUALENV_WRAPPER; source $DJANGO_BASH_COMPLETION'

# Ruby (on Rails)
#source $HOME/.rvm/scripts/rvm
alias rb='source $HOME/.rvm/scripts/rvm'
