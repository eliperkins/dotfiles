# if the mise command does not exist, install mise from the latest release
if ! command -v mise &> /dev/null; then
  curl -fsSL https://mise.run | sh
fi
