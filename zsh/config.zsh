# Quote pasted URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# History settings
# Save x items to the given history file
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$HOME/.zsh_history

# Misc options
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt IGNORE_EOF
setopt PROMPT_SUBST
setopt CORRECT
setopt CORRECTALL
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

# Append history to the zsh_history file
setopt APPEND_HISTORY

# Write to history after each command
setopt INC_APPEND_HISTORY

# Adds history incrementally and share it across sessions
setopt SHARE_HISTORY

# Don't store the history command
setopt HIST_NO_STORE

# Don't record dupes in history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS

# Ignore commands for history that start with a space
setopt HIST_IGNORE_SPACE

# Remove superfluous blanks from each line being added to the history list
setopt HIST_REDUCE_BLANKS

# After !! previous command don't execute, allow editing
setopt HIST_VERIFY

# pushd for cd commands
setopt AUTO_PUSHD
setopt CDABLE_VARS
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME
DIRSTACKSIZE=16

# Special chars as file globs
setopt EXTENDED_GLOB

# Jump to end after completion
setopt ALWAYS_TO_END

# Show menu after multiple tabs
setopt AUTO_MENU

# No beep
unsetopt BEEP
unsetopt HIST_BEEP
unsetopt LIST_BEEP

# Warn before quitting with background jobs
setopt CHECK_JOBS

export GPG_TTY=$(tty)
