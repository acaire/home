# Manage home directory
alias config='/usr/bin/git --git-dir=$HOME/.home/ --work-tree=$HOME'

# source alias configs from ~/.zshrc.d
if [ -d ~/.zshrc.d ]; then
  for file in ~/.zshrc.d/***/*.zsh; do
    source $file
  done
fi
