# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH

# Go Stuff
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/gopath
export PATH=$GOPATH/bin:$PATH

# Pythons
export PATH=/anaconda/bin:$PATH
export PATH=/home/rkippenbrock/bin/spark-2.0.0-bin-hadoop2.7/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra,computer_specific}; do
  [ -r "$file" ] && source "$file"
done
unset file

# ### git tab completion ###
source ~/.git-completion.bash
