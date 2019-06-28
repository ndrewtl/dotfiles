# Abstract out commands
alias reload='exec $SHELL'

# shorten expressvpn service
alias vpn=expressvpn

# Honestly these two always get mixed up in my head
alias pgp=gpg

# Shorten things I do a lot
alias e=$EDITOR
alias E='$EDITOR $(git ls-files | fzf)'
alias se=sudoedit
alias p=pacman
alias q=exit
alias sp='sudo pacman'
alias q=exit
alias mkdirp='mkdir -p'
alias ls=exa

# Jump to project root
alias cdr='cd $(git rev-parse --show-toplevel)'

# Use colors for these things
alias ssh-login='eval `ssh-agent` && ssh-add'
alias pw=$PASSWORD_MANAGER
# kopy secret
alias ks='$PASSWORD_MANAGER --clip'

# For mac: brew cask
alias cask='brew cask'
