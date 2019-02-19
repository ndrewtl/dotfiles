# Environment variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

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

# Wallpapers dir
export WALLPAPER_HOME=~/Pictures/wallpapers

source $ZDOTDIR/applications.zsh
source $ZDOTDIR/aliases.zsh
source $ZDOTDIR/prompt.zsh
