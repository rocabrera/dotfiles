# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ~~~~~~~~~~~~~~~ Miscellaneous ~~~~~~~~~~~~~~~~~~~~~~~~
set -o vi

# ~~~~~~~~~~~~~~~ Load Auxiliar Files ~~~~~~~~~~~~~~~~~~~~~~~~
source ~/.bash_aliases # contain only alias
source ~/.bash_envvars # contain only export

# ~~~~~~~~~~~~~~~ Keybinds ~~~~~~~~~~~~~~~~~~~~~~~~
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
get_status_code(){
        status_code="$?"
        if [ "${status_code}" -eq "0" ]; then
                color="\e[1;32m"
        else
                color="\e[1;31m"
        fi
        echo -e "${color}Exit Status: $status_code\e[0m"
}

PS1="\$(get_status_code) \[\033[01;97m\] \w \[\e[01;36m\]\$(parse_git_branch)\n\[\e[0m\]$: "


# ~~~~~~~~~~~~~~~ UV ~~~~~~~~~~~~~~~~~~~~~~~~
export PATH=$PATH:~/.local/bin
eval "$(uv generate-shell-completion bash)"

# ~~~~~~~~~~~~~~~ Terraform ~~~~~~~~~~~~~~~~~~~~~~~~
export PATH=$PATH:/Users/rodrigocastaldoni/bin
complete -o nospace -C /opt/homebrew/bin/terraform terraform
