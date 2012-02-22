alias reload='source ~/.bash_profile'

# SVN
if which -s mycolorize ; then
	alias svn-status='svn status | mycolorize red "D .*" green "\? .*" blue "A .*" yellow "M .*"'
	alias svn-update='svn update | mycolorize red "C .*" green "G .*" blue "A .*" yellow "D .*"'
else
	alias svn-status='svn status'
	alias svn-update='svn update'
fi

alias "svn-st"=svn-status
alias "svn-up"=svn-update

if which -s colordiff ; then
	alias svn-diff='svn diff --diff-cmd colordiff'
else
	alias svn-diff='svn diff'
fi

alias svn-addall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svn-deleteall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete'

alias limb_unit="php /Users/nerten/dev/tests_runner/bin/limb_unit.php"
