# bash prompt colors
PS1="\[\e[33m\]\d\[\e[m\] \[\e[33m\]\A\[\e[m\]";
PS1+="\[${white}\] in ";
PS1+="\[${green}\]\w"; # working directory full path
PS1+=" \[\e[36m\]\u@\h\[\e[m\]\[\e[37m\]";
PS1+="\$(prompt_git \"\[${white}\] on \[${violet}\]\" \"\[${blue}\]\")"; # Git repository details
PS1+="\n";
PS1+="\[${white}\]\$ \[${reset}\]"; # `$` (and reset color)
export PS1;

PS2="\[${yellow}\]→ \[${reset}\]";
export PS2;

# vi input mode for bash
set -o vi

# ensure airline fonts work properly
export LANG='en_US.UTF8'

# set vim to default editor
export VISUAL=vim
export EDITOR="$VISUAL"

alias vi="vim"

work() {
    sh ~/idio/work.sh $1
}

local() {
    sh ~/idio/local.sh $1
}

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;