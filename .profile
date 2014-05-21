export force_color_prompt="yes"

[ "$BASH" -a -f ~/.bashrc ] && . ~/.bashrc

#git remote update origin && git pull origin master

alias tar='gnutar'
alias ls='ls -G --color=auto'
alias ll='ls -lG --color=auto'
alias la='ls -lGa --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

. $HOME/.colors.sh
. $HOME/.git-prompt.sh
. $HOME/.git-completion.sh

export CLICOLOR=1
export TERM="xterm-256color"
export GREP_OPTIONS='--color=auto -r'

POINTER_CHAR="⬆"
PREINFO="\n$POINTER_CHAR $BIBLUE[ "$BICYAN"exit: $BIWHITE\$?$BIBLUE ] [ "$BICYAN"time: $BIWHITE\$(TZ='America/Los_Angeles' date +%H:%M:%S)$BIBLUE ]$END_COLOR"
PREGIT="$PREINFO\n$BIWHITE\u$BIBLUE@$ON_IRED\h$ON_BLACK$BIWHITE \w$END_COLOR"
POSTGIT=" $BIRED\$$END_COLOR "

#export PROMPT_COMMAND='__git_ps1 "\n\u@\h \w" " \\\$ "'
#export PROMPT_COMMAND='__git_ps1 "\n[exit: $?] [time: \t]\n\[\e[01;37m\]\u\[\e[01;34m\]@\[\e[01;31m\]\h\[\e[01;37m\] \w\[\e[0m\]" " \[\e[01;31m\]\$\[\e[0m\] "'
export PROMPT_COMMAND="__git_ps1 \"$PREGIT\" \"$POSTGIT\""

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

function bt {
    echo -ne "\033]0;"$*"\007"
}
