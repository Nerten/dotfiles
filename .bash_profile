export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

if [ -d ~/bin ]; then
        export PATH=~/bin:$PATH  # add your bin folder to the path, if you have it.  It's a good place to add all your scripts
fi

if [ -f ~/.profile ]; then
        . ~/.profile
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

# Bash completion (Homebrew)
if which brew >/dev/null && [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

# Brew completion
# https://github.com/miku/brew-completion
if [ -f ~/.ext/brew-completion/brew-completion.sh ]; then
    . ~/.ext/brew-completion/brew-completion.sh
fi

# Add completion to source and .
complete -F _command source
complete -F _command .

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Brew
export PATH=/usr/local/bin:$PATH
