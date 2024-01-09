#!/bin/sh

if [ ! -d "$HOME/.asdf" ]
then
    echo "  Installing asdf for you."
    git clone --depth 1 --branch v0.13.1 https://github.com/asdf-vm/asdf.git "$HOME/.asdf"
fi