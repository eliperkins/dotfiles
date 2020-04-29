#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" > /tmp/homebrew-install.log

  if (( $+commands[brew cask] ))
  then
    brew install caskroom/cask/brew-cask
  fi

  brew bundle
fi
