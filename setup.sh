#!/usr/bin/env bash
# run from env/bin

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget https://gist.githubusercontent.com/miki725/9783474/raw/70a2da69bdfe4ceadac4fb6c153ae6e4f94eac27/.bash_prompt.sh \
    -O bash-prompt.sh
mkdir ../jupyter_profile
wget https://raw.githubusercontent.com/tomlepaine/Virtualenv-setup/master/jupyter_notebook_config.py \
    -O ../jupyter_profile/jupyter_notebook_config.py

echo "source $VIRTUAL_ENV/bin/git-completion.bash" >> activate
echo "source $VIRTUAL_ENV/bin/bash-prompt.sh" >> activate
echo "export JUPYTER_CONFIG_DIR=$VIRTUAL_ENV/jupyter_profile" >> activate

# TODO(tpaine) setup pre-commit hooks with yapf and isort.
