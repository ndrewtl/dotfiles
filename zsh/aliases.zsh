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
alias z=zathura

# Use colors for these things
alias ls='ls --color'
alias less='less -R'
alias tree='tree -C'
