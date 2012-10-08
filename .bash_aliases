alias reload='source ~/.bash_profile'
 
if [ -f ~/bin/svn-wrapper.sh ]; then
	alias svn=~/bin/svn-wrapper.sh
fi

alias svn-addall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svn-deleteall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete'

if [ -f ~/dev/tests_runner/bin/limb_unit.php ]; then
	alias limb_unit="php ~/dev/tests_runner/bin/limb_unit.php"
fi

GRC=`which grc`
if [ "$TERM" != dumb ] && [ -n GRC ]
then
    alias colourify="$GRC -es --colour=auto"
    alias configure='colourify ./configure'
    alias diff='colourify diff'
    alias make='colourify make'
    alias gcc='colourify gcc'
    alias g++='colourify g++'
    alias as='colourify as'
    alias gas='colourify gas'
    alias ld='colourify ld'
    alias netstat='colourify netstat'
    alias ping='colourify ping'
    alias traceroute='colourify /usr/sbin/traceroute'
fi
