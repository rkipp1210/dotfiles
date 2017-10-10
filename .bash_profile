# add bin folders to path
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=/usr/local/sbin:$PATH
export PATH

# Go Stuff
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH

# docker for mac
export DOCKER_HOST="unix:///var/run/docker.sock"

# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Pythons
export PATH=/anaconda/bin:$PATH
export PATH=/home/rkippenbrock/bin/spark-2.0.0-bin-hadoop2.7/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,aliases,computer_specific}; do
  [ -r "$file" ] && source "$file"
done
unset file

### homebrew bash completions ###
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

### git tab completion ###
source ~/.git-completion.bash

# activate yhat aws credentials
activate_yhat_aws

# activate the python 3.5 conda env
source activate py35
