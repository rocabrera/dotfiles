# Only run on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Set necessary environment variables for brew to work
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# .bash_profile is executed for login shells, while
# .bashrc is executed for interactive non-login shells.
# Executes bashrc when using login shells.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Archlinux directory pattern
# https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME"/.config
