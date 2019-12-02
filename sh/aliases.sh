# Abstract out commands
alias reload='exec $SHELL'

# shorten expressvpn service
alias vpn=$VPN

# Honestly these two always get mixed up in my head
alias pgp=gpg

# Shorten things I do a lot
alias e=$EDITOR
alias E='$EDITOR "$(git ls-files | fzf)"'
alias EE='$EDITOR "$(git ls-files --modified | fzf)"'
alias se=sudoedit
alias p=pacman
alias q=exit
alias sp='sudo pacman'
alias d=dnf
alias sd='sudo dnf'
alias ds='dnf search'
alias q=exit
alias mkdirp='mkdir -p'
alias ls='\ls'
alias l=exa
alias la='exa --all'
alias ll='exa --long'

# print first line
alias first='head -n1'

# print ansi qr code of stdin
alias pqr='qrencode -t ansi -o -'
alias rand='gpg  --armor --gen-random 2 12'

# sway: take a screenshot with slurp and grim, print to stdout
alias screenshot='slurp | grim -g - -'

# Jump to project root
alias cdr='cd $(git rev-parse --show-toplevel)'

# Use colors for these things
alias ssh-login='eval `ssh-agent` && ssh-add'
alias pw=$PASSWORD_MANAGER

# kopy secret
alias ks='$PASSWORD_MANAGER --clip'

alias fp=flatpak

# For mac: brew cask
alias cask='brew cask'

# launch GNOME
alias start-gnome='XDG_SESSION_TYPE=wayland exec dbus-run-session gnome-session'

# Keep awake -- only works on systemd systems. This alias serves to smooth the
# transition from macOS 'caffeinate' command

# Pass a program to run
alias caffeinate='systemd-inhibit'
# Pass a time to wait
alias caffeinate-for='systemd-inhibit sleep'
# Pass nothing-- stay awake forever
alias caffeinate-forever='systemd-inhibit sleep infinity'

# Update all things
function ug() {
  sudo dnf update
  sudo pacman -Sydd
}
