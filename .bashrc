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

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
