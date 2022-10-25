#!/bin/zsh
# shellcheck disable=all
# https://github.com/ryanoasis/nerd-fonts
# https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
# Check for brew (Homebrew)
if command -v brew 1>/dev/null 2>&1; then
    # Install brew packages
    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font
fi