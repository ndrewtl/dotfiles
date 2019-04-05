# Abstract out commands
alias reload='exec $SHELL'
alias wallpaper='feh --randomize --bg-fill $WALLPAPER_PATH'
alias display='xrandr --output HDMI1 --auto'

# shorten expressvpn service
alias vpn=expressvpn

# Honestly these two always get mixed up in my head
alias pgp=gpg

# Shorten things I do a lot
alias e=$EDITOR
alias se=sudoedit
alias p=$PACKAGER
alias sp='sudo $PACKAGER'
alias mkdirp='mkdir -p'

# Use colors for these things
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls='ls -G'      # mac:   BSD userland
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias ls='ls --color' # linux: GNU coreutils
fi
alias less='less -R'
alias tree='tree -C'
alias ssh-login='eval `ssh-agent` && ssh-add'
alias open=xdg-open
alias pass=gopass # use gopass as pass replacement

# For mac: brew cask
alias cask='brew cask'
