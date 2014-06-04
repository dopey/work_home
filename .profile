export force_color_prompt="yes"

[ "$BASH" -a -f ~/.bashrc ] && . ~/.bashrc

export CLICOLOR=1
export TERM="xterm-256color"
export GREP_OPTIONS='--color=auto -r'


#########################
# Aliases
#########################
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

function bt {
    echo -ne "\033]0;"$*"\007"
}
