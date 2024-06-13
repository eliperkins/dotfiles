# shellcheck source=/dev/null
source "$HOME/.zsh/antigen/antigen.zsh"

antigen bundles <<EOBUNDLES
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-syntax-highlighting
    reegnz/jq-zsh-plugin
EOBUNDLES

antigen apply
