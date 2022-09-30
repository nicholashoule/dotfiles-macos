#!/usr/bin/env bash
# Install command-line tools using Homebrew (https://brew.sh/)
# Doc: https://docs.brew.sh/Installation#macos-requirements
# Command: /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Ask for the administrator password upfront.
sudo -v
# export HOMEBREW_PREFIX=/usr/local
# export HOMEBREW_CELLAR=/usr/local/Cellar
# export HOMEBREW_REPOSITORY=/usr/local/Homebrew

# Info
# sudo xcode-select --install
# brew --env
# brew cat dos2unix
# brew info dos2unix

## Permission issues
# sudo chown -R $(whoami) $(brew --prefix)/*

## Update & upgrade
brew update & upgrade

# Install brew packages
brew install coreutils                # Install GNU core utilities (those that come with OS X are outdated)
brew install moreutils                # Install some other useful utilities like `sponge`
brew install wget --with-iri          # Install standard `vim` with IRI support
brew install vim --override-system-vi # Install vim with vi override
brew install findutils                # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install pre-commit               # Install pre-commit package manager (https://pre-commit.com/#install)
#brew install grep screen tmux tree   # Install others

## Create symlinks
#sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

## Remove outdated versions
brew cleanup
