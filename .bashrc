# .bashrc

if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

for file in ~/.{bash_aliases,bash_prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file

bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

test -e ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash
