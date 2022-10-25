#!/bin/zsh
# shellcheck disable=all
# Install command-line tools using Homebrew (https://brew.sh/)
# Doc: https://docs.brew.sh/Installation#macos-requirements
# Command: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ask for the administrator password upfront.
sudo -v
# HOMEBREW_PREFIX=/usr/local
# HOMEBREW_CELLAR=/usr/local/Cellar
# HOMEBREW_REPOSITORY=/usr/local/Homebrew
# export HOMEBREW_PREFIX HOMEBREW_CELLAR HOMEBREW_REPOSITORY HOMEBREW_CASK_OPTS
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# Info
# sudo xcode-select --install
# brew --env
# brew cat dos2unix
# brew info dos2unix

## Permission issues
# sudo chown -R $(whoami) $(brew --prefix)/*

# Check for brew (Homebrew)
if command -v brew 1>/dev/null 2>&1; then
    ## Update & upgrade
    brew update && brew upgrade

    # Install core packages
    brew install -sq coreutils  # Install GNU core utilities
    brew install -sq wget       # Install GNU wget
    brew install -sq findutils  # Install GNU find, locate, updatedb, and xargs, g-prefixed
    brew install -sq gnupg      # Install GNU gpg (GnuPG)
    brew install -sq tree       # Install GNU tree
    brew install dos2unix       # Install GNU dos2unix

    # Install other packages
    brew install tmux           # Install tmux
    brew install jq             # Install jq
    brew install -sq pre-commit # Install pre-commit package manager (https://pre-commit.com/#install)

    ## Create symlinks
    #sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

    ## Remove outdated versions
    brew cleanup
fi
