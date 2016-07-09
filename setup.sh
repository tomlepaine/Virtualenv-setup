#!/usr/bin/env bash
# run from env/bin

# Setup git completion
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
echo "source $VIRTUAL_ENV/bin/git-completion.bash" >> activate

# Setup bash prompt
wget https://gist.githubusercontent.com/miki725/9783474/raw/70a2da69bdfe4ceadac4fb6c153ae6e4f94eac27/.bash_prompt.sh \
    -O bash-prompt.sh
echo "source $VIRTUAL_ENV/bin/bash-prompt.sh" >> activate

# Setup jupyter to strip output from notebooks, and automatically save a python script.
mkdir ../jupyter_profile
wget https://raw.githubusercontent.com/tomlepaine/Virtualenv-setup/master/jupyter_notebook_config.py \
    -O ../jupyter_profile/jupyter_notebook_config.py
echo "export JUPYTER_CONFIG_DIR=$VIRTUAL_ENV/jupyter_profile" >> activate

# Setup pre-commit hooks with yapf and isort.
wget https://raw.githubusercontent.com/tomlepaine/Virtualenv-setup/master/.pre-commit-config.yaml
echo "alias pre-commit-setup='cp $VIRTUAL_ENV/bin/.pre-commit-config.yaml . && pre-commit install'"
