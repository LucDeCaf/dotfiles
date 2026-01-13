# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/luc/.zsh/completions:"* ]]; then export FPATH="/Users/luc/.zsh/completions:$FPATH"; fi
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
  direnv
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

# nvm
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_VERSIONS="$XDG_CONFIG_HOME/nvm/versions/node"
export NODE_VERSION_PREFIX="v"

# intellij idea
export PATH="$HOME/intellij-idea/bin:$PATH"

# golang
export PATH="$PATH:/usr/local/go/bin"

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# pnpm
export PNPM_HOME="/Users/luc/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/luc/.deno/env"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

# Android Studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/luc/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# postgres
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# bun completions
[ -s "/Users/luc/.bun/_bun" ] && source "/Users/luc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
