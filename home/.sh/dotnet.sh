#!/bin/zsh
# shellcheck disable=all
# Install dotnet command-line tools (https://learn.microsoft.com/en-us/dotnet/core/install/)
[ -d "${HOME}/.dotnet" ] || mkdir -p "${HOME}/.dotnet" 

# dotnet-install
# https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script#recommended-version
(cd "${HOME}/.dotnet" && curl -O 'https://dot.net/v1/dotnet-install.sh')

# dotnet-uninstall
# https://github.com/dotnet/cli-lab/releases/latest
local vcli_lab='1.5.255402'
local vcli_lab_file='dotnet-core-uninstall.tar.gz'
(cd "${HOME}/.dotnet" && curl -O "https://github.com/dotnet/cli-lab/releases/download/${vcli_lab}/${vcli_lab_file}")
(cd "${HOME}/.dotnet" && tar -zxf "${vcli_lab_file}" && rm "${vcli_lab_file}")
