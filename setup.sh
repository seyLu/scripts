#!/bin/bash

if [[ ! -d ~/Documents/repos ]]; then
    mkdir ~/Documents/repos
fi

cd ~/Documents/repos

git clone https://github.com/seyLu/scripts.git

if [[ ! -f ~/.bash_aliases ]]; then
    touch ~/.bash_aliases
    echo "#!/bin/bash" >> ~/.bash_aliases
    echo >> ~/.bash_aliases
fi

echo "# Initialize External Scripts" >> ~/.bash_aliases
echo '[[ -z "${_SCRIPTS_PATH}" ]] && source "${HOME}/Documents/repos/scripts/bash/__init__"' >> ~/.bash_aliases

source ~/.bashrc
build
