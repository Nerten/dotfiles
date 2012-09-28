#!/usr/bin/env bash

SCRIPT_PATH="${BASH_SOURCE[0]}";
if([ -h "${SCRIPT_PATH}" ]) then
  while([ -h "${SCRIPT_PATH}" ]) do SCRIPT_PATH=`readlink "${SCRIPT_PATH}"`; done
fi
SCRIPT_PATH="$( cd "$( dirname "${SCRIPT_PATH}" )" && pwd )"

echo "$SCRIPT_PATH"
echo "$HOME"

for file in `ls -a "${SCRIPT_PATH}"`
do	
	if ! [ "$file" == '.' ] && ! [ "$file" == '..' ] && ! [ "$file" == 'install.sh' ] && ! [ "$file" == '.git' ]; then
		basefile=`basename $file`
		echo "$basefile"
		if [ -f "$HOME/$basefile" ];
		then
			! [ -f "$HOME/$basefile.bak" ] && \
				cp "$HOME/$basefile" "$HOME/$basefile.bak" && \
				echo "Backed up existing $basefile to $basefile.bak"
		fi
		rm "$HOME/$basefile"
		ln -s "$SCRIPT_PATH/$file" "$HOME/$basefile"
		echo " - Linked $basefile"
	fi
done
