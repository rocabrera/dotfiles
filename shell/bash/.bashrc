# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ~~~~~~~~~~~~~~~ Miscellaneous ~~~~~~~~~~~~~~~~~~~~~~~~
set -o vi

# ~~~~~~~~~~~~~~~ Load Auxiliar Files ~~~~~~~~~~~~~~~~~~~~~~~~
source ~/.bash_aliases # contain only alias
source ~/.bash_envvars # contain only export

# ~~~~~~~~~~~~~~~ Keybinds ~~~~~~~~~~~~~~~~~~~~~~~~
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ Homebrew ~~~~~~~~~~~~~~~~~~~~~~~~
# Needs: brew install bash-completion@2
[[ -r "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh" ]] && . "$HOMEBREW_PREFIX/etc/profile.d/bash_completion.sh"

# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~
# colorized prompt
PROMPT_COMMAND='__git_ps1 "\[\e[33m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[0m\]" " \n$ "'

# ~~~~~~~~~~~~~~~ Pyenv ~~~~~~~~~~~~~~~~~~~~~~~~
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

# ~~~~~~~~~~~~~~~ UV ~~~~~~~~~~~~~~~~~~~~~~~~
export PATH=$PATH:~/.local/bin

# ~~~~~~~~~~~~~~~ Terraform ~~~~~~~~~~~~~~~~~~~~~~~~
export PATH=$PATH:/Users/rodrigocastaldoni/bin
complete -o nospace -C /opt/homebrew/bin/terraform terraform

eval "$(uv generate-shell-completion bash)"
