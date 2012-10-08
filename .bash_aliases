alias reload='source ~/.bash_profile'
 
if [ -f ~/bin/svn-wrapper.sh ]; then
	alias svn=~/bin/svn-wrapper.sh
fi

alias svn-addall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svn-deleteall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete'

if [ -f ~/dev/tests_runner/bin/limb_unit.php ]; then
	alias limb_unit="php ~/dev/tests_runner/bin/limb_unit.php"
fi
