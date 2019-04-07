#!/bin/sh
# Set $PATH variable to make things executable

# Additional Paths
MYBINS_PATH=$HOME/.bin
YARN_PATH=$HOME/.yarn/bin
GHCUP_PATH=$HOME/.ghcup/bin
CABAL_PATH=$HOME/.cabal/bin
export PATH=$PATH:$MYBINS_PATH:$CABAL_PATH:$GHCUP_PATH:$YARN_PATH:$SNAP_PATH

