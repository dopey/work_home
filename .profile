export force_color_prompt="yes"

[ "$BASH" -a -f ~/.bashrc ] && . ~/.bashrc

export CLICOLOR=1
export TERM="xterm-256color"
export GREP_OPTIONS='--color=auto -r'

export EDITOR=vim
export VISUAL=vim

#########################
# Aliases
#########################
alias grp="/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -lGa'
alias ..='cd ..'
alias ...='cd ../..'
alias +='pushd'
alias -- -='popd'
alias ?='dirs -v'
alias myip="ifconfig | grep inet  | grep -v 127.0.0.1 | cut -d\ -f2"


. $HOME/.colors.sh
. $HOME/.git-prompt.sh
. $HOME/.git-completion.sh

POINTER_CHAR="⬆"
PREINFO="\n$POINTER_CHAR $BIBLUE[ "$BLUE"exit: $WHITE\$?$BIBLUE ] [ "$BLUE"time: $WHITE\$(TZ='America/Los_Angeles' date +%H:%M:%S)$BIBLUE ]$END_COLOR"
PREGIT="$PREINFO\n$WHITE\u $PURPLE@ $WHITE$ON_IRED\h$WHITE \w$END_COLOR"
POSTGIT=" $RED\$$END_COLOR "

export PROMPT_COMMAND="__git_ps1 \"$PREGIT\" \"$POSTGIT\""

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

export PATH="/home/max/.local/bin:$PATH"

EDITOR=vim
VISUAL=vim

function bt {
    echo -ne "\033]0;"$*"\007"
}


# Predictable SSH authentication socket location.
#SOCK="/tmp/ssh-agent-$USER-tmux"
#if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
#then
#    rm -f /tmp/ssh-agent-$USER-screen
#    ln -sf $SSH_AUTH_SOCK $SOCK
#    export SSH_AUTH_SOCK=$SOCK
#fi

function psg {
    ps aux | head -1 && ps aux | GREP_OPTIONS= grep "$1" | GREP_OPTIONS= grep -v grep;
}

function glog {
    tail -f /var/log/syslog | GREP_OPTIONS= grep "$1";
}

function psm {
    ps -eo size,pid,user,command | awk '{ hr=$1/1024 ; printf("%13.6f Mb ",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf("%s ",$x) } print "" }' | sort -n
}
