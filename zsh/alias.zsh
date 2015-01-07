# cd
alias scd=='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# Git
alias gsu='git submodule update --init --recursive'
alias gs='git status'
alias gut='git'

# rbenv
alias rr='rbenv rehash'
alias rehash='rbenv rehash'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '

# zsh
alias reload!='. ~/.zshrc'

# mine
alias s='cd ~/src'

alias chrome='open /Applications/Google\ Chrome.app/'
alias chromex='open /Applications/Google\ Chrome.app/ --args --disable-web-security'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias pod_dev='~/src/Rainforest/Cocoapods/bin/pod'
