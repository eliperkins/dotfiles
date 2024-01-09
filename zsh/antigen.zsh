source $HOME/.zsh/antigen/antigen.zsh

antigen bundles <<EOBUNDLES
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-syntax-highlighting
    mafredri/zsh-async
    seletskiy/zsh-fuzzy-search-and-edit
EOBUNDLES

antigen apply
