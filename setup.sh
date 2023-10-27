#!/bin/bash

readonly _PATH_TO_SCRIPTS="${HOME}/Documents/repos"

if [[ ! -d "${_PATH_TO_SCRIPTS}" ]]; then
    mkdir "${_PATH_TO_SCRIPTS}"
fi

cd "${_PATH_TO_SCRIPTS}" || exit

git clone https://github.com/seyLu/scripts.git

if [[ ! -f ~/.bash_aliases ]]; then
    touch ~/.bash_aliases
    echo "#!/bin/bash" >> ~/.bash_aliases
    echo >> ~/.bash_aliases
fi

readonly _ENTRY_POINT="${_PATH_TO_SCRIPTS}/scripts/bash/__init__"

echo "# Initialize External Scripts" >> ~/.bash_aliases
echo '[[ -z "${_SCRIPTS_PATH}" ]] && source "${_ENTRY_POINT}"' >> ~/.bash_aliases

# shellcheck source="${_ENTRY_POINT}"
source "${_ENTRY_POINT}"
build
reload
