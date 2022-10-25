#!/bin/zsh
# shellcheck disable=all
# Install dotnet command-line tools (https://learn.microsoft.com/en-us/dotnet/core/install/)
[ -d "${HOME}/.dotnet" ] || mkdir -p "${HOME}/.dotnet" 

# dotnet-install
# https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script#recommended-version
typeset -r vcli_lab_ifile='https://dot.net/v1/dotnet-install.sh'
(cd "${HOME}/.dotnet" && curl -sL -o 'dotnet-install' "${vcli_lab_ifile}")
(cd "${HOME}/.dotnet" && chmod 0750 'dotnet-install')

# dotnet-uninstall
# https://github.com/dotnet/cli-lab/releases/latest
typeset -r vcli_lab='1.5.255402'
typeset -r vcli_lab_ufile='dotnet-core-uninstall.tar.gz'
(cd "${HOME}/.dotnet" && curl -sL -o "${vcli_lab_ufile}" "https://github.com/dotnet/cli-lab/releases/download/${vcli_lab}/${vcli_lab_ufile}")
(cd "${HOME}/.dotnet" && tar -zxf "${vcli_lab_ufile}" && rm "${vcli_lab_ufile}")

# Adding Dotnet to .zshrc
typeset -r _ZSHRC="${HOME}/.zshrc"
if ! grep -i "\${HOME}/.dotnet" "${_ZSHRC}" 1>/dev/null 2>&1; then
(cat << EOF >> "${_ZSHRC}"
# Dotnet
DOTNET_ROOT="${HOME}/.dotnet"
DOTNET_INSTALL_DIR="${HOME}/.dotnet"
PATH="\${PATH}:${HOME}/.dotnet"
export DOTNET_ROOT DOTNET_INSTALL_DIR PATH
EOF
)
fi
