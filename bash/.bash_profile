#  Place this line at the bottom of .bashrc file
# if [ -f ~/Documents/dot-source-files/bash/.bash_profile ]; then
#     source ~/Documents/dot-source-files/bash/.bash_profile
# fi

# Terminator config file location
# ~/.config/terminator

# Line number in nano editor
# nano ~/.nanorc
# set linenumbers

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
bind 'set completion-ignore-case on'

# Append to the Bash history file, rather than overwriting it
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend;
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable autocd
shopt -s autocd

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM='gnome-256color';
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM='xterm-256color';
fi;

prompt_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	if [ $(git rev-parse --is-inside-work-tree &>/dev/null; echo "${?}") == '0' ]; then

		# check if the current directory is in .git before running git checks
		if [ "$(git rev-parse --is-inside-git-dir 2> /dev/null)" == 'false' ]; then

			# Ensure the index is up to date.
			git update-index --really-refresh -q &>/dev/null;

			# Check for uncommitted changes in the index.
			if ! $(git diff --quiet --ignore-submodules --cached); then
				s+='+';
			fi;

			# Check for unstaged changes.
			if ! $(git diff-files --quiet --ignore-submodules --); then
				s+='!';
			fi;

			# Check for untracked files.
			if [ -n "$(git ls-files --others --exclude-standard)" ]; then
				s+='?';
			fi;

			# Check for stashed files.
			if $(git rev-parse --verify refs/stash &>/dev/null); then
				s+='$';
			fi;

		fi;

		# Get the short symbolic ref.
		# If HEAD isn’t a symbolic ref, get the short SHA for the latest commit
		# Otherwise, just give up.
		branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
			git rev-parse --short HEAD 2> /dev/null || \
			echo '(unknown)')";

		[ -n "${s}" ] && s=" [${s}]";

		echo -e "${1}${branchName}${2}${s}";
	else
		return;
	fi;
}

if tput setaf 1 &> /dev/null; then
	tput sgr0; # reset colors
	bold=$(tput bold);
	reset=$(tput sgr0);
	# Solarized colors, taken from http://git.io/solarized-colors.
	black=$(tput setaf 0);
	green=$(tput setaf 47);
	red=$(tput setaf 196);
	pink=$(tput setaf 199);
  violet=$(tput setaf 61);
  blue=$(tput setaf 33);
  white=$(tput setaf 15);
else
	bold='';
	reset="\e[0m";
	black="\e[1;30m";
	green="\e[1;32m";
	red="\e[1;31m";
	pink="\e[1;37m";
  violet="\e[1;35m";
  blue="\e[1;34m";
  white="\e[1;37m";

fi;

# Set the terminal title and prompt.
PS1="\[\033]0;\W\007\]"; # working directory base name
PS1+="\[${bold}\]\n"; # newline
PS1+="\[${green}\]\u"; # username
PS1+="\[${pink}\] [ ";
PS1+="\[${red}\]\w\[${reset}\]"; # working directory full path
PS1+="\[${bold}\]\[${pink}\] ] ";
PS1+="\$(prompt_git \"\[${white}\]on \[${violet}\]\" \"\[${blue}\]\")"; # Git repository details
PS1+="\n";
PS1+="\[${blue}\]\@ "; # `$` (and reset color)
PS1+="\[${pink}\]\$ \[${reset}\]"; # `$` (and reset color)
export PS1;

if [ -f ~/Documents/dot-source-files/bash/.user_config ]; then
    source ~/Documents/dot-source-files/bash/.user_config
fi
if [ -f ~/Documents/dot-source-files/bash/.user_alias ]; then
    source ~/Documents/dot-source-files/bash/.user_alias
fi