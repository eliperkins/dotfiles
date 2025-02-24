#!/usr/bin/env bash

# link all files ending in ".symlink" in this "config" directory (and it's subfolders) to the "$HOME/.config" directory, maintaining folder structure
# for example, link "./config/ghostty/config.symlink" to "$HOME/.config/ghostty/config"
for file in $(find config -type f -name "*.symlink"); do
    dir=$(dirname "$file")
    name=$(basename "$file" .symlink)
    mkdir -p "$HOME/.$dir"
    ln -sf "$(pwd)/$file" "$HOME/.$dir/$name"
done
