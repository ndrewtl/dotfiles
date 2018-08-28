# Environment variables
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share

# Additional Paths
MYBINS_PATH=$HOME/.bin
YARN_PATH=$XDG_DATA_HOME/yarn/bin
export PATH=$PATH:$MYBINS_PATH:$YARN_PATH

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
