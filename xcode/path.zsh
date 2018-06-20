if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

fpath=(_swift $fpath)
