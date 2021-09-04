# Use powerline
#USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/pyenv.sh
source ~/dotfiles/zsh/prompt.sh
source ~/dotfiles/zsh/sys_variables.sh

