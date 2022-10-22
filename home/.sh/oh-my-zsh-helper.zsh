#!/bin/zsh
# shellcheck disable=all
# https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
typeset -r ZSH="${HOME}/.oh-my-zsh"
export ZSH

sh -c "$(curl -fsSL 'https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh')"
