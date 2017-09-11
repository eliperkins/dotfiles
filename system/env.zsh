vim=$(which nvim)
export EDITOR=$vim

if which clang > /dev/null; then
  export CC=clang
fi

# i - Vim's smart case
# j.5 - Center search results
# K - Quit on CTRL-C
# M - Longer prompt
# R - output colors correctly
# X - Don't send clear screen signal
export LESS="ij.5KMRX"

export GREP_OPTIONS="--color"
