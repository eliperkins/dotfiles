# cd
alias scd='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ,,='cd ..'
alias ,,,='cd ../..'

# Vim
alias v="nvim"
alias vv="nvim ."

# Modern Unix https://github.com/ibraheemdev/modern-unix
if command -v lsd &> /dev/null; then
    alias ls='lsd -laF'
elif command -v exa &> /dev/null; then
    alias ls='exa -laF'
else 
    alias ls='ls -la'
fi

if command -v bat &> /dev/null; then
    alias cat='bat'
fi

if command -v fd &> /dev/null; then
    alias find='fd'
fi

if command -v rg &> /dev/null; then
    alias grep='rg'
fi

if command -v duf &> /dev/null; then
    alias du='duf'
fi

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


# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

if test "$(uname -s)" = "Darwin"; then
    alias chrome='open /Applications/Google\ Chrome.app/'
    alias chromex='open /Applications/Google\ Chrome.app/ --args --disable-web-security'
    alias jscrepl='/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc'
fi
