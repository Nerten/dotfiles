alias reload='source ~/.bash_profile'

alias svn=~/bin/svn-wrapper.sh

alias svn-addall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svn-deleteall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete'

alias limb_unit="php ~/dev/tests_runner/bin/limb_unit.php"
