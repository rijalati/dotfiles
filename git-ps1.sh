#!/usr/bin/env ksh
SOURCE="${_}"

# Export all variables
set -a

NORM="\E[0m"
BLACK="\E[0;30m"
GRAY="\E[1;30m"
RED="\E[0;31m"
LITE_RED="\E[1;31m"
GREEN="\E[0;32m"
LITE_GREEN="\E[1;32m"
YELLOW="\E[0;33m"
LITE_YELLOW="\E[1;33m"
BLUE="\E[0;34m"
LITE_BLUE="\E[1;34m"
PURPLE="\E[0;35m"
PINK="\E[1;35m"
CYAN="\E[0;36m"
LITE_CYAN="\E[1;36m"
LITE_GRAY="\E[0;37m"
WHITE="\E[1;37m"
BLACK_BKGRND="\E[0;40m"
RED_BKGRND="\E[0;41m"
GREEN_BKGRND="\E[0;42m"
YELLOW_BKGRND="\E[0;43m"
BLUE_BKGRND="\E[0;44m"
PURPLE_BKGRND="\E[0;45m"
CYAN_BKGRND="\E[0;46m"
GRAY_BKGRND="\E[0;47m"
UNDERLINE="\E[4m"
BOLD="\E[1m"
INVERT="\E[7m"
CUR_UP="\E[1A"
CUR_DN="\E[1B"
CUR_LEFT="\E[1D"
CUR_RIGHT="\E[1C"
SOD="\E[1;1f"

# Return to normal exports
set +a

function async_run {
    {
        eval "$@" &> /dev/null
    }&
}

function git_dir
{
    if [[ -z ${_GIT_DIR} ]]; then

        DIR="${ cd -P "${ dirname "${_}"; }" && pwd; }"

}

PS1.get()
{
    if [[  ]]
}

