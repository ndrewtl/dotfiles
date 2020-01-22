# Set environment
# this file is mostly responsible for setting environment variables

export TMPDIR=$HOME/tmp

# keyboard layout
export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_OPTIONS=caps:swapescape # swap capslock and esc keys

# Put go directories in data path
export GOPATH=$XDG_DATA_HOME/go
export TERM=xterm-256color

# use vi for line editing
set -o vi
