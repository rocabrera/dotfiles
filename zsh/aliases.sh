#System 

alias ls="ls --color=auto"
alias mv="mv -v"
alias cp="cp -v"
alias grep="grep --color=auto"

function cs () {
    cd "$@" && ls -la
    }

#####################


#Git
alias gs="git status"
alias ga="git add"


#####################
# Programs
alias jupyter="jupyter lab --browser=firefox"


#####################
