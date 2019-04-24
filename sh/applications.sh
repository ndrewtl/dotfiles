# Applications

# Helper: check if we have the given command
command_exists() {
  which $1 > /dev/null 2>&1
}

export BROWSER=firefox
export BROWSER2=chromium
export LAUNCHER='rofi -show run'
export TERMINAL='kitty --single-instance'

# Use the most modern vi-style editor we can find
if  command_exists nvim; then
  export EDITOR=nvim
elif  command_exists vim; then
  export EDITOR=vim
else
  export EDITOR=vi
fi

unset command_exists
