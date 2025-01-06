#!/bin/bash

if [[ $CODESPACES == "true" ]]; then
    # install nix if not installed
    if [ ! -x "$(command -v nix)" ]; then
        sh <(curl -L https://nixos.org/nix/install) --no-daemon
    fi
fi
