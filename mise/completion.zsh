if command -v mise &> /dev/null; then
  mise completion zsh > $HOME/.dotfiles/mise/_mise
  source $HOME/.dotfiles/mise/_mise
fi
