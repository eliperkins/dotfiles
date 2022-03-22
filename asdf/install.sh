#!/bin/sh

if [ ! -d "$HOME/.asdf" ]
then
    echo "  Installing asdf for you."
    git clone https://github.com/asdf-vm/asdf.git "$HOME/.asdf"
    cd "$HOME/.asdf" || exit 2
    git checkout "$(git describe --abbrev=0 --tags)"
fi