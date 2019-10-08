#!/bin/sh
set -euf

# Navigate to the folder containing this file
cd "$(dirname "$0")"

stow --dir dotfiles HOME --target ${HOME}
stow --dir dotfiles XDG_CONFIG_HOME --target ${XDG_CONFIG_HOME}

./dotfiles/XDG_CONFIG_HOME/nvim/plug.sh
