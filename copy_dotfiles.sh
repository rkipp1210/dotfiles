#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for file in ~/.{bashrc,bash_prompt,bash_profile,aliases,helpers,git-completion.bash}; do
    cp ${file} ${DIR}
    echo ${file} copied to ${DIR}
done
