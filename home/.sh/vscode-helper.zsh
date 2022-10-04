#!/bin/zsh
# shellcheck disable=all
# vscode
# https://code.visualstudio.com/download
# https://code.visualstudio.com/docs/setup/mac
ZPROFILE="${HOME}/.zprofile"
if ! grep -i 'Visual Studio Code.app' "${ZPROFILE}" 1>/dev/null 2>&1; then
cat << EOF >> "${ZPROFILE}"
# Add Visual Studio Code (code)
export PATH="\${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
source "${ZPROFILE}"
fi

# code --list-extensions
# code --install-extension vscode-icons-team.vscode-icons@11.19.0
# @installed
# @sort:name microsoft
while IFS= read -r line; do
  code --install-extension "${line}";
done << \EOF
azsdktm.SecurityIntelliSense
chef-software.chef
Dart-Code.dart-code
Dart-Code.flutter
dbaeumer.vscode-eslint
DotJoshJohnson.xml
esbenp.prettier-vscode
golang.go
hashicorp.hcl
hashicorp.terraform
k--kato.docomment
ms-dotnettools.csharp
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.pylint
ms-python.python
ms-python.vscode-pylance
ms-vscode-remote.remote-containers
ms-vscode.cmake-tools
ms-vscode.cpptools
ms-vscode.cpptools-extension-pack
ms-vscode.cpptools-themes
ms-vscode.hexeditor
ms-vscode.live-server
ms-vscode.powershell
puppet.puppet-vscode
redhat.ansible
rust-lang.rust-analyzer
ryuta46.multi-command
streetsidesoftware.code-spell-checker
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscode-icons-team.vscode-icons
EOF
