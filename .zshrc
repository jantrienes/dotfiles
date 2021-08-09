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
# Increase history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export SAVEHIST=$HISTSIZE
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';
# To prevent history from recording duplicated entries
setopt hist_ignore_all_dups

# Disable autocomplete menu
setopt noautomenu
setopt nomenucomplete

# Initialize completion system
autoload -Uz compinit && compinit

autoload -U colors && colors
PS1="%B%{$fg[white]%}%n@%m:%~%{$reset_color%}%b$ "

# Conda clobbers HOST, so we save the real hostname into another variable.
HOSTNAME="$(hostname)"

precmd() {
    OLDHOST="${HOST}"
    HOST="${HOSTNAME}"
}

preexec() {
    HOST="${OLDHOST}"
}
