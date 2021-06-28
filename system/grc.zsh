# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] )) && test "$(uname -s)" = "Darwin"
then
  source `brew --prefix`/etc/grc.bashrc
fi
