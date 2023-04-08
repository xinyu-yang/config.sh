#!/usr/bin/env fish
# (: MARKER :)

# To include configuration only for login shells, use
# if status --is-login
#    ...
# end
# To include configuration only for interactive shells, use
# if status --is-interactive
#   ...
# end

# Default programs:
export EDITOR="vim"
export PAGER="less"
export BROWSER="firefox"
export TERM="xterm-256color"

### alias
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'

# Add PATH
#fish_add_path -m ~/.local/bin
contains ~/.local/bin $fish_user_paths; or set -xp fish_user_paths ~/.local/bin
