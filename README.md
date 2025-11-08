# Dotfiles

Dotfiles repo for use with GNU Stow. Contains cross-platform / cross-device configuration for tools I use on multiple systems (eg. nvim, tmux, zsh)

## Installation

1. Install GNU Stow

Ubuntu / Debian (using APT)

```sh
sudo apt install stow build-essential
```

MacOS (using Homebrew)

```sh
brew install stow
```

2. Symlink files

```sh
cd dotfiles
stow . --adopt && git --reset hard
```
