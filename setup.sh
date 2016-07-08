#!/usr/bin/env bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

wget https://gist.githubusercontent.com/miki725/9783474/raw/70a2da69bdfe4ceadac4fb6c153ae6e4f94eac27/.bash_prompt.sh -O bash-prompt.sh

echo "source $VIRTUAL_ENV/bin/git-completion.bash" >> activate
echo "source $VIRTUAL_ENV/bin/bash-prompt.sh" >> activate
