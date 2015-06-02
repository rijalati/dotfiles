# kshrc for ksh93 beta
# Author: Ritchie J Latimore
# Created on: 2015/03/17 01:11

typeset -x HOSTNAME=$(</etc/hostname) \
	HOST=${HOSTNAME%%/*}

typeset -x TERM=xterm-256color\
	PS1='$(print -n "\E[36m$LOGNAME\E[32m@\E[34m$HOST\E[37m:";\
	print -n "\E[32m${PWD/$HOME/\~}\E[37m
$ ")'\
	ttyname=$(tty) \
	HISTFILE=$HOME/.ksh.hist.d/${ttyname##*/}.hist \
	HISTSIZE=1000 \
	PS4='[$LINENO.$SECONDS]+' \
	EDITOR=vi \
	VISUAL=emacs \
	PATH="$PATH:/opt/ast/bin:$HOME/bin" \
	FPATH="$FPATH:/opt/ast/fun:$HOME/fun" 

typeset -fu search
autoload search

