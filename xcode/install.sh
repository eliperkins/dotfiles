#!/bin/sh

if test "$(uname -s)" = "Darwin"; then
  mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes
  cp -a "xcode/Themes/." ~/Library/Developer/Xcode/UserData/FontAndColorThemes/
fi
