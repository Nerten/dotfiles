export LC_ALL="en_US.UTF-8"
export LANG="en_US"

if [ -d ~/bin ]; then
	export PATH=~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Bash completion (MacPorts)
if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

if which brew >/dev/null 2>&1; then
	# Bash completion (Homebrew)
	[ -f `brew --prefix`/etc/bash_completion ] && source `brew --prefix`/etc/bash_completion
	# Brew completion
	# https://github.com/miku/brew-completion
	[ -f ~/.ext/brew-completion/brew-completion.sh ] && source ~/.ext/brew-completion/brew-completion.sh
	# Brew completition
	[ -f `brew --prefix`/Library/Contributions/brew_bash_completion.sh ] && source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
fi

# Add completion to source and .
complete -F _command source
complete -F _command .

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Brew
export PATH=/usr/local/bin:$PATH
