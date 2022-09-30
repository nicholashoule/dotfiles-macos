#!/bin/zsh
# shellcheck disable=all
# vscode
# https://code.visualstudio.com/download
# https://code.visualstudio.com/docs/setup/mac
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
