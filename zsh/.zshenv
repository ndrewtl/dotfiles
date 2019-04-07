# Additional Paths
MYBINS_PATH=$HOME/.bin
YARN_PATH=$HOME/.yarn/bin
SNAP_PATH=/var/lib/snapd/snap/bin
GHCUP_PATH=$HOME/.ghcup/bin
CABAL_PATH=$HOME/.cabal/bin
export PATH=$PATH:$MYBINS_PATH:$CABAL_PATH:$GHCUP_PATH:$YARN_PATH:$SNAP_PATH

# keyboard layout
export XKB_DEFAULT_LAYOUT=us
export XKB_DEFAULT_OPTIONS=caps:swapescape

# GPG
export GPG_TTY=`tty`

source $XDG_CONFIG_HOME/sh/applications.sh
source $XDG_CONFIG_HOME/sh/aliases.sh
source $ZDOTDIR/prompt.sh
