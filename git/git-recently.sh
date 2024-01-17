#!/bin/bash

recently() {
  local branch
  branch=$(git --no-pager branch --sort=-committerdate --format='%(refname:short) (%(color:green)%(creatordate:relative)%(color:reset))' | fzf --reverse --no-hscroll --no-multi -n 1 --ansi)
  git switch "$(echo "$branch" | awk '{print $1}' | sed "s/.* //")"
}

recently
