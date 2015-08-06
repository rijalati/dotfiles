# kshrc for ksh93 beta
# Author: Ritchie J Latimore
# Created on: 2015/03/17 01:11

# alias settings 

alias emacs-nox='emacs -t ${ttyname}'
alias enx='emacs -t ${ttyname}'
alias awk='mawk' 
alias ls='ls --color=auto'

# variable settings

typeset -x HOSTNAME=$(</etc/hostname) \
	HOST=${HOSTNAME%%/*}\
	## Reset to normal: \E[0m
	NORM="\E[0m"\
	## Colors:
	BLACK="\E[0;30m"\
	GRAY="\E[1;30m"\
	RED="\E[0;31m"\
	LRED="\E[1;31m"\
	GREEN="\E[0;32m"\
	LGREEN="\E[1;32m"\
	YELLOW="\E[0;33m"\
	LYELLOW="\E[1;33m"\
	BLUE="\E[0;34m"\
	LBLUE="\E[1;34m"\
	PURPLE="\E[0;35m"\
	PINK="\E[1;35m"\
	CYAN="\E[0;36m"\
	LCYAN="\E[1;36m"\
	LGRAY="\E[0;37m"\
	WHITE="\E[1;37m"\
	## Backgrounds
	BLACKB="\E[0;40m"\
	REDB="\E[0;41m"\
	GREENB="\E[0;42m"\
	YELLOWB="\E[0;43m"\
	BLUEB="\E[0;44m"\
	PURPLEB="\E[0;45m"\
	CYANB="\E[0;46m"\
	GRAYB="\E[0;47m"\
	## Attributes:
	UNDERLINE="\E[4m"\
	BOLD="\E[1m"\
	INVERT="\E[7m"\
	## Cursor movements
	CUR_UP="\E[1A"\
	CUR_DN="\E[1B"\
	CUR_LEFT="\E[1D"\
	CUR_RIGHT="\E[1C"\
	## Start of display (top left)
	SOD="\E[1;1f"\
	JOBMAX=16

typeset -x TERM=xterm-256color\
	PS1='$(print -n "${GREEN}${LOGNAME}${BLUE}@${CYAN}${HOST}${WHITE}:${NORM}";\
	printf "${GRAY}${PWD/$HOME/\~}${LBLUE}
\xCE\xBB ${NORM}")'\
	ttyname=$(tty) \
	HISTFILE=$HOME/.ksh.hist.d/${ttyname##*/}.hist \
	HISTSIZE=1000 \
	PS4='[$LINENO.$SECONDS]+' \
	EDITOR=emacs-nox\
#	VISUAL=
	PATH="$PATH:/opt/ast/bin:$HOME/bin" \
	FPATH="$FPATH:/opt/ast/fun:$HOME/fun" 

# function settings

typeset -fu search
autoload search
set -o showme
set -o multiline
#set -o viraw
#set -o vi
set -o emacs

# pyenv setup 
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
