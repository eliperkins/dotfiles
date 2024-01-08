# Codespaces-specific zsh config

if [[ $CODESPACES == "true" ]]; then
  # Configure Linuxbrew if installed
  test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
  test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
  test -d ~/.linuxbrew && eval "$(brew --prefix)/bin/brew shellenv"
fi
