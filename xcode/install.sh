#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]; then
  echo "  Installing Xcode themes for you."
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
  cp -a "$HOME/.dotfiles/xcode/Themes/." ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
end