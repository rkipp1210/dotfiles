# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Go Stuff
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/dev/go
export PATH=$GOPATH/bin:$PATH

export PATH="/home/rkippenbrock/anaconda2/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,computer_specific}; do
  [ -r "$file" ] && source "$file"
done
unset file

# ### git tab completion ###
source ~/.git-completion.bash

# # Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
# [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
