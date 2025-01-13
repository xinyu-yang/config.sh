#!/bin/bash
# (: MARKER :)
# This config file is only called in login shell.

# Default programs:
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="firefox"
export TERM="tmux-256color"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# sdcv path
export STARDICT_DATA_DIR="${XDG_DATA_HOME}/stardict"

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		#echo "Executing source bashrc in bash_profile"
		. "$HOME/.bashrc"
	fi
fi
