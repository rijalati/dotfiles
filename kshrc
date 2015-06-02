# kshrc for ksh93 beta
# Author: Ritchie J Latimore
# Created on: 2015/03/17 01:11

typeset -x HOSTNAME=$(</etc/hostname) \
	HOST=${HOSTNAME%%/*}

typeset -x TERM=xterm-256color\
	PS1='$(print -n "\E[0;35m$(whoami)\E[1;33m@\E[1;34m$HOST\E[1;35m:";\
	print -n "\E[36m${PWD/$HOME/\~}\E[1;36m
$ ")'\
	ttyname=$(tty) \
	HISTFILE=$HOME/.ksh.hist \
	HISTSIZE=1000 \
	PS4='[$LINENO.$SECONDS]+' \
	EDITOR=vi \
	PATH="$PATH:/opt/ast/bin:$HOME/bin" \
	FPATH="$FPATH:/opt/ast/fun:$HOME/fun" 

set -o emacs


#typeset -fu search
#autoload search

