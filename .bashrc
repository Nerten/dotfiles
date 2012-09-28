# Define how Bash prompt looks like:
#
# User @ Host – working dir
#export PS1="\u@\h\w$ "
export PS1="\u@\h\w: "

# Cli Colors
export CLICOLOR=1
# use yellow for dir’s
export LSCOLORS=dxfxcxdxbxegedabagacad

# Alias
#
#
alias ls="ls -la"

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=10000
# append to bash_history if Terminal.app quits
shopt -s histappend

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
