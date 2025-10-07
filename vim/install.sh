#!/usr/bin/env bash

# link all files ending in ".symlink" in this "vim" directory (and it's subfolders) to the "$HOME/.vim" directory, maintaining folder structure
# for example, link "./vim/autoload/plug.vim.symlink" to "$HOME/.vim/autoload/plug.vim"
for file in $(find vim -type f -name "*.symlink"); do
    dir=$(dirname "$file")
    name=$(basename "$file" .symlink)
    mkdir -p "$HOME/.$dir"
    ln -sf "$(pwd)/$file" "$HOME/.$dir/$name"
done
