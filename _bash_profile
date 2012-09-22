# .bash_profile
#
# Use this file for settings only command line tools need.  Use 
# ~/.MacOSX/environment.plist for settings for other apps, like GUI SVN
# clients, etc.  See ~/.MacOSX/README.txt for details.
#
#export PATH=".:$HOME/bin:$PATH"
export PATH="$PATH:$HOME/bin"

#export DYLD_LIBRARY_PATH="/usr/local/mysql/lib:/usr/local/lib"
export DYLD_LIBRARY_PATH="/usr/local/mysql/lib"

# Editor of choice
#
# export EDITOR=emacs       # Starts a new emacs
# export EDITOR=emacsclient	# Uses a running emacs. Requires (server-start) in .emacs
# export EDITOR=vim
# export EDITOR="mate -w"
# export GIT_EDITOR="mate -w" # Overrides core.editor, VISUAL, EDITOR
export GIT_EDITOR="subl -n -w" # Overrides core.editor, VISUAL, EDITOR

alias ls='ls -FG'
alias ll='ls -lh'
alias la='ls -a'

alias tree='tree -C -I ".DS_Store|\.git|*.pyc" -a'

alias ping='ping -c 5'

# Python/VirtualEnv/Django
#export WORKON_HOME="$HOME/.virtualenvs"       # default location
export PROJECT_HOME="$HOME/Projects/Python"
source /usr/local/bin/virtualenvwrapper.sh
export VIRTUALENV_DISTRIBUTE=true

#export DJANGO_SETTINGS_MODULE='project.settings.local'

source $HOME/Projects/Python/django_bash_completion
alias pmc='python manage.py'

alias did='cd $HOME/Projects/Python/DiD; source ENV/bin/activate; cd did'
alias mymdb='cd $HOME/Projects/Python/MyMDb; source ENV/bin/activate; cd mymdbsite'

# Ruby (on Rails)
# source $HOME/.rvm/scripts/rvm
