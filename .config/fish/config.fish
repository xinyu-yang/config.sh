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

# Add alias for gh copilot
alias ghcs "gh copilot suggest"
alias ghce "gh copilot explain"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/xinyu/miniforge3/bin/conda
    eval /home/xinyu/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/xinyu/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/xinyu/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/xinyu/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<

