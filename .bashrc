#!/bin/bash
# (: MARKER :)
# This config file is only called in non-login shell.

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


### alias
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias ls2vi='fc -s "ls "="vim "'
alias proxyshow='source setproxy'
alias proxyon='source setproxy on'
alias proxyoff='source setproxy off'


### env
#PS1='[\u@\h \w]\$ '
export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "


# Default setting
ALL_PROXY='socks5://127.0.0.1:60001'
HTTP_PROXY='socks5://127.0.0.1:60001'
HTTPS_PROXY='socks5://127.0.0.1:60001'

# Update PATH
if [ ! -d "$HOME/.local/bin" ]; then
	mkdir -p $HOME/.local/bin
fi
if [[ ! ":$PATH:" =~ .*:$HOME/.local/bin:.* ]]; then
	export "PATH=$HOME/.local/bin:$PATH"
fi


# Include gh copilot alias
if command -v gh > /dev/null -a command -v gh copilot > /dev/null; then
	source $HOME/.config/bash/copilot.bash
fi


cat<<'EOF'
           _..._
         .'     '.
        /  _   _  \
        | (o)_(o) |
         \(     ) /
         //'._.'\ \
        //   .   \ \
       ||   .     \ \
       |\   :     / |
       \ `) '   (`  /_
     _)``".____,.'"` (_
     )     )'--'(     (
      '---`      `---`
EOF
