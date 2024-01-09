#!/bin/sh

if [ ! -d "$HOME/.git-pile" ]
then
  git clone --depth 1 https://github.com/keith/git-pile.git "$HOME/.git-pile"
fi