# Statically bundle plugins for fast startup. Antidote itself is only sourced
# to (re)generate the bundle, which happens when the plugin list changes.
# After `antidote update`, run `touch ~/.zsh_plugins.txt` to force a rebuild.
zsh_plugins_txt=$HOME/.zsh_plugins.txt
zsh_plugins=$HOME/.zsh_plugins.zsh

if [[ ! $zsh_plugins -nt $zsh_plugins_txt ]]; then
  source $HOME/.zsh/antidote/antidote.zsh
  antidote bundle <$zsh_plugins_txt >|$zsh_plugins
fi

source $zsh_plugins
