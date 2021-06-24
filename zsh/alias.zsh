# cd
alias scd=='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# Vim
alias v="nvim"
alias vv="nvim ."

# Modern Unix https://github.com/ibraheemdev/modern-unix
alias ls='lsd -laF'
alias du='duf'

# Archives
alias mktar="tar -pvczf"
alias untar="tar -zxvf"

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

alias jscrepl='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc'
