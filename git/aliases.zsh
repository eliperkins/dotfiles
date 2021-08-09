# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

function gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}
