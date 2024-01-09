#!/bin/sh

if [ ! -d "$HOME/.zsh/antigen" ]
then
    echo "  Installing Antigen for you."
    git clone --depth 1 https://github.com/zsh-users/antigen.git "$HOME/.zsh/antigen"
fi
