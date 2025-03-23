# ~~~~~~~~~~~~~~~ Custom Commands ~~~~~~~~~~~~~~~~~~~~~~~~
alias sbrc='source $HOME/.bashrc'

# ~~~~~~~~~~~~~~~ Directories ~~~~~~~~~~~~~~~~~~~~~~~~
alias lab='cd $LAB'
alias dotfiles='cd $DOTFILES'
alias scripts='cd $SCRIPTS'

# ~~~~~~~~~~~~~~~ Linux Commands ~~~~~~~~~~~~~~~~~~~~~~~~
alias ..="cd .."
alias e="exit"

if [ "$OSTYPE" == linux-gnu ]; then  # Is this the Ubuntu system?
    alias ls='ls -Flh --group-directories-first --color=auto'
else
    alias ls='gls -Flh --group-directories-first --color=auto'
fi


# ~~~~~~~~~~~~~~~ General Programs ~~~~~~~~~~~~~~~~~~~~~~~~
alias t='tmux'

# ~~~~~~~~~~~~~~~ Git ~~~~~~~~~~~~~~~~~~~~~~~~
alias gp='git pull'
alias gs='git status'
alias ga='git add'
alias gco='git commit'


# ~~~~~~~~~~~~~~~ UV ~~~~~~~~~~~~~~~~~~~~~~~~
alias uvj="uv run --with jupyter jupyter lab"

# ~~~~~~~~~~~~~~~ Terraform ~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~ Kubectl ~~~~~~~~~~~~~~~~~~~~~~~~


