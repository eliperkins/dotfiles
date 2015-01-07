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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

if (( $+commands[brew cask] ))
then
  brew install caskroom/cask/brew-cask
fi

brew tap homebrew/boneyard
brew bundle ./homebrew/Brewfile
