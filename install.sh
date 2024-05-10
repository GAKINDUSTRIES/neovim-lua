#!/bin/bash

# Define the target directory
TARGET="$HOME/.config/nvim"

# Define the source directory, assuming the script is run from the repo root
SOURCE="$(pwd)"

echo "Installing Neovim configuration..."

# Check if the target config directory already exists
if [ -d "$TARGET" ]; then
    read -p "The Neovim configuration directory already exists. Overwrite? (y/n) " choice
    case "$choice" in
        y|Y ) echo "Proceeding with installation...";;
        n|N ) echo "Installation aborted."; exit;;
        * ) echo "Invalid response."; exit;;
    esac
fi

# Create the config directory if it doesn't exist
mkdir -p "$TARGET"

# Create symbolic links
# Assuming that your Neovim configuration is structured as:
#   - init.lua
#   - lua/
#   - etc.
ln -sfn "$SOURCE/init.lua" "$TARGET/init.lua"
ln -sfn "$SOURCE/lua" "$TARGET/lua"

# Add more links if you have other directories or files in your configuration

echo "Neovim configuration installed successfully. Happy coding ;D"
