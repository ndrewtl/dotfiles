#!/bin/sh
# Set $PATH variable to make things executable

# Additional Paths
MYBINS_PATH=$HOME/.bin
YARN_PATH=$HOME/.yarn/bin
GHCUP_PATH=$HOME/.ghcup/bin
CABAL_PATH=$HOME/.cabal/bin
CARGO_PATH=$HOME/.cargo/bin
GO_PATH=$XDG_DATA_HOME/go/bin
RBENV_PATH=$HOME/.rbenv/shims
export PATH=$MYBINS_PATH:$RBENV_PATH:$PATH:$GO_PATH:$CARGO_PATH:$CABAL_PATH:$GHCUP_PATH:$YARN_PATH
