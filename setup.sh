#!/bin/bash

readonly REPO_OWNER="seyLu"
readonly REPO_NAME="scripts"
readonly REPO_URL="https://github.com/${REPO_OWNER}/${REPO_NAME}.git"

readonly REPO_PARENT_DIR="${HOME}/Documents/repos"
readonly REPO_DIR="${REPO_PARENT_DIR}/${REPO_NAME}"
readonly ENTRY_POINT="${REPO_DIR}/bash/__init__"

if [[ ! -d "${REPO_PARENT_DIR}" ]]; then
    mkdir "${REPO_PARENT_DIR}"
fi

cd "${REPO_PARENT_DIR}" || exit

if [[ -d "${REPO_DIR}/.git" ]]; then
    printf '%s\n' "Directory '${REPO_DIR}' is a git repository. Pulling latest changes..."
    cd "${REPO_DIR}" || exit
    git pull
else
    printf '%s\n' "Directory '${REPO_DIR}' is not a git repository. Cloning..."
    git clone "${REPO_URL}"
fi

if [[ ! -f ~/.bashrc ]]; then
    touch ~/.bashrc
    printf '%s\n' "#!/bin/bash" >>~/.bashrc
fi

if ! grep -Fq '! alias reload &>/dev/null' ~/.bashrc; then
    {
        echo
        printf '%s\n' "# Initialize External Scripts"
        printf '%s\n' '! alias reload &>/dev/null' "&& source \"${ENTRY_POINT}\""
        printf '%s\n' "# Enhanced colorful prompt with git branch"
        printf '%s\n' 'export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\] \$(parse_git_branch)\[\033[00m\]\n\$ "'
        echo
    } >>~/.bashrc
    # shellcheck source=/dev/null
    source "${ENTRY_POINT}"
    printf '%s\n' "Setup complete! Open a new terminal to start using your custom aliases and scripts."
else
    printf '%s\n' "No setup needed. Your custom aliases and scripts are already configured."
fi
