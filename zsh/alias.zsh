# cd
alias scd=='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# Git
alias gsu='git submodule update --init --recursive'
alias gs='git status'
compdef _git gs=git-status
alias gut='git'

#rbenv
alias rr='rbenv rehash'

# Commands starting with % for pasting from web
alias %=' '
alias $=' '


alias reload!='. ~/.zshrc'
alias rehash='rbenv rehash'