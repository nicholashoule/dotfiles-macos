#!/bin/zsh
# shellcheck disable=all
# https://github.com/spaceship-prompt/spaceship-prompt

## Brew
# Check for brew (Homebrew)
if command -v brew 1>/dev/null 2>&1; then
    # Themes & Fonts
    brew install -sq spaceship           # Theme, https://github.com/spaceship-prompt/spaceship-prompt
    brew install -sq font-hack-nerd-font # Fonts, https://github.com/ryanoasis/nerd-fonts
fi
