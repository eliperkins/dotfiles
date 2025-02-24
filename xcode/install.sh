#!/bin/sh

if test "$(uname -s)" = "Darwin"; then
  echo "  Installing Xcode themes for you."
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
  cp -a "xcode/Themes/." ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
fi
