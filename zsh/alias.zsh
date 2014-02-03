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

alias pbcopy_ssh='pbcopy < ~/.ssh/id_rsa.pub'
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias xctool="~/src/xctool/xctool.sh"
alias sencha="~/Library/Sencha/Cmd/3.1.2.342/sencha"
