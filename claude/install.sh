#!/usr/bin/env bash

# symlinks contents of this `claude` folder into ~/.claude, omitting this install script itself
# e.g. `$DOTFILES/claude/skills/foo` -> `~/.claude/skills/foo`

find claude -type f -not -name "install.sh" | while read -r file; do
    target="$HOME/.claude/${file#claude/}"
    mkdir -p "$(dirname "$target")"
    ln -sf "$(pwd)/$file" "$target"
done
