#!/bin/bash

# Check if .bashrc file exists in the user's home directory
if [[ -f "$HOME/.bashrc" ]]; then
  echo "The .bashrc file exists. Updating environment variables..."

  # Append environment variables to .bashrc
  echo "export HELLO=\$HOSTNAME" >> "$HOME/.bashrc"
  echo "export LOCAL=\$(whoami)" >> "$HOME/.bashrc"

  echo ".bashrc updated successfully!"
else
  echo "The .bashrc file does not exist in the home directory."
fi

# Open another terminal
if command -v gnome-terminal &>/dev/null; then
  gnome-terminal &
elif command -v xterm &>/dev/null; then
  xterm &
else
  echo "No supported terminal emulator found to open a new terminal."
fi
