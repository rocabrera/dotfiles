# Mac configuration

Shell: Bash 
Terminal Emulator: Kitty 

# Setup
0. Clone esse repositório na sua Home. 
1. Execute o arquivo ```setup.sh``` na raiz do repositório dotfiles.
1. Instalar o brew, [link](https://brew.sh)
2. Instalar o bash via brew, [link](https://formulae.brew.sh/formula/bash).
3. Definir o bash como shell default.
```bash
echo /opt/homebrew/bin/bash | sudo tee -a /etc/shells

chsh -s /opt/homebrew/bin/bash
```

4. Instalar brew dependencies:
	- kitty, [link](https://formulae.brew.sh/cask/kitty). # Chosen terminal
	- space mono nerd font, [link](https://formulae.brew.sh/cask/font-space-mono-nerd-font). # Chosen fonts
	- coreutils, [link](https://formulae.brew.sh/formula/coreutils). # Using to sort folders when listing (adds gls option)
	- uv, [link](https://formulae.brew.sh/formula/uv). # Chosen python manager
	- tfswitch, [link](https://tfswitch.warrensbox.com/Installation/). # terraform manager

5. Instalar aws-cli, [link](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
