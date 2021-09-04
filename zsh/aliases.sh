#System 

alias ls="ls --color=auto"
alias mv="mv -v"
alias cp="cp -v"
alias grep="grep --color=auto"
alias sourced="source deactivate"
alias pya="pyenv activate"

function cs () {
    cd "$@" && ls -la
    }

#####################


#Git
alias gs="git status"
alias ga="git add"


#####################
# Programs
#alias jupyter-lab="jupyter lab --browser=firefox"


#####################
