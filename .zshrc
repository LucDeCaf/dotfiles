export PATH="$HOME/.local/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="philips"

# Define plugins (custom and builtin)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
)

# Load zsh-completions manually
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit

# Load plugins
source $ZSH/oh-my-zsh.sh

# Aliases
alias vim=nvim
alias cd=z

# quick access to common files
export NVIM_CONF="$HOME/.config/nvim"
export SH_CONF="$HOME/.zshrc"

# zoxide
eval "$(zoxide init zsh)"

# java
export PATH="$HOME/jdk-25/bin:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# intellij idea
export PATH="$HOME/intellij-idea/bin:$PATH"

# golang
export PATH="$PATH:/usr/local/go/bin"

