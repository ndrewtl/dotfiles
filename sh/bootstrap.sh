#!/bin/sh

# Bootstrap: source all the other important shell startup commands in this
# directory
export XDG_DATA_HOME=$HOME/.local/share
source $XDG_CONFIG_HOME/sh/applications.sh
source $XDG_CONFIG_HOME/sh/path.sh
source $XDG_CONFIG_HOME/sh/aliases.sh
source $XDG_CONFIG_HOME/sh/env.sh
fortune | cowsay
