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
  [[ -e $1 ]] && backup $1
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
if [[ $SHELL == /bin/bash ]]; then
  echo 'Bash detected'
  echo 'Writing .bashrc...'
  backup_if_exists .bashrc
  cp $basedir/bash/.bashrc .
elif [[ $SHELL == /bin/zsh ]]; then
  echo 'zsh detected'
  echo 'writing .zshrc...'
  backup_if_exists .zshrc
  cp $basedir/zsh/.zshrc .
else
  echo 'generic shell detected, no shell setup available'
fi

# Setup vim
if command_exists nvim then
  echo 'Setting up nvim'
elif command_exists vim then
  echo 'Setting up vim'
fi
