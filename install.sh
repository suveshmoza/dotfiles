#!/bin/bash

echo "🔧 Setting up your dotfiles..."

# Determine platform (Linux/macOS)
platform="$(uname)"
CONFIG_HOME="${HOME}/.config"
OMF_DIR="${HOME}/.local/share/omf"

# === Symlink common dotfiles ===
echo "🔗 Linking dotfiles..."

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# === Setup Fish shell ===
echo "🐠 Setting up Fish + OMF..."

mkdir -p $CONFIG_HOME/fish
ln -sf ~/dotfiles/fish/config.fish $CONFIG_HOME/fish/config.fish
ln -sfn ~/dotfiles/fish/functions $CONFIG_HOME/fish/functions
ln -sfn ~/dotfiles/fish/completions $CONFIG_HOME/fish/completions
ln -sfn ~/dotfiles/fish/conf.d $CONFIG_HOME/fish/conf.d


# === Done ===
echo "✅ Dotfiles setup complete!"
