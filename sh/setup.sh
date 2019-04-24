#!/bin/sh
#
# setup.sh
# ========
# Setup script to configure a new device
#
# Requires
# - git

## Helpers
# Backup a file
backup() {
  echo "Backing up $1 to $1.backup"
  mv $1 $1.backup
}

# Backup a file, if it exists
backup_if_exists() {
  [ -e $1 ] && backup $1
}

# Check if we have the given command
command_exists() {
  which $1 > /dev/null 2>&1
}

# Fail with the given command
fail() {
  echo "COMMAND EXITING: $1"
  exit 1;
}

# Fail if the command isn't present
ensure_command_exists() {
  command_exists $1 || fail "$1 is not installed"
}

basedir=$HOME/.config

# Enforce requirements
echo 'Checking dependencies...'
ensure_command_exists git

# Change to home directory
echo 'Changing to home directory...'
cd $HOME

# Clone configs
echo 'Cloning configuration repo...'
backup_if_exists $basedir
git clone https://github.com/ndrewtl/dotfiles.git $basedir

# Setup shell
echo 'Setting up shell...'
case $SHELL in
  '/bin/bash')
    echo 'Bash detected'
    backup_if_exists .bashrc
    echo 'Writing .bashrc...'
    ln --symbolic --verbose $basedir/bash/.bashrc .
    ;;
  '/bin/zsh')
    echo 'zsh detected'
    backup_if_exists .zshrc
    echo 'writing .zshrc...'
    ln --symbolic --verbose $basedir/zsh/.zshrc .
    ;;
  *)
    echo "No config available for shell '$SHELL'"
    ;;
esac

# Setup editor
case $EDITOR in
  nvim)
    echo 'Setting up nvim...'
    echo 'Installing vim-plug...'
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ;;
  vim)
    echo 'Setting up vim...'
    echo 'Installing vim-plug...'
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo 'Linking vimrc file...'
    ln --symbolic --verbose $basedir/vim/.vimrc .
    ;;
  *)
    echo "No config available for editor '$EDITOR'"
    ;;
esac
