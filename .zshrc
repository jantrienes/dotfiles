# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,zsh_aliases,functions,extra,pathalias}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Do not highlight pasted text
zle_highlight+=(paste:none)

# Append to the zsh history file, rather than overwriting it. History is written incrementally,
# not only when a shell is closed.
setopt INC_APPEND_HISTORY

setopt noautomenu
setopt nomenucomplete

# Initialize completion system
autoload -Uz compinit && compinit

autoload -U colors && colors
PS1="%B%{$fg[white]%}%n@%m:%~"$'\n'"%{$reset_color%}%b> "
