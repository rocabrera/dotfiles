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

# Enables git-autocomplete
enable_git_autocomplete () {
	path="${DOTFILES}/shell/bash/git-completion.bash" 

	if [ -f $path ]; then
   		source $path 
	else
   		echo "git-completion.bash not found"
	fi
}
enable_git_autocomplete

# Archlinux directory pattern
# https://wiki.archlinux.org/title/XDG_Base_Directory
# export XDG_CONFIG_HOME="$HOME"/.config

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/rodrigocastaldoni/google-cloud-sdk/path.bash.inc' ]; then . '/Users/rodrigocastaldoni/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/rodrigocastaldoni/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/rodrigocastaldoni/google-cloud-sdk/completion.bash.inc'; fi
