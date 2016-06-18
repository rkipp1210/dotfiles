#!/bin/bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOME_DIR="$HOME"

for file in ${CURRENT_DIR}/.{bashrc,bash_prompt,bash_profile,aliases,helpers,git-completion.bash}; do
    cp ${file} ${HOME_DIR}
    echo ${file} copied to ${HOME_DIR}
done
