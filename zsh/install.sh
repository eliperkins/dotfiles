#!/bin/sh

if [ ! -d "$HOME/.zsh/antidote" ]
then
    echo "  Installing Antidote for you."
    git clone --depth=1 https://github.com/mattmc3/antidote.git $HOME/.zsh/antidote
fi
