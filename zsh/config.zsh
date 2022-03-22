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

# Add timestamps to history
setopt EXTENDED_HISTORY

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

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

# Auto insert quotes on typed URLs
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Reduce the lag switching into Normal mode to 0.1s
export KEYTIMEOUT=1

# Show vim mode on right
# http://dougblack.io/words/zsh-vi-mode.html
function zle-line-init zle-keymap-select {
  VIM_PROMPT="[% NORMAL]%"
  # Apparently EPS1 is not a typo
  RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

# Force update of RPS1 immediately
reset_rps1() {
  RPS1=""
}
autoload -U add-zsh-hook
add-zsh-hook precmd reset_rps1

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char

# for zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

if test -f "$highlighting"
then
  source $highlighting
fi
