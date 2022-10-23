#!/bin/zsh
# shellcheck disable=all

# Go
# https://go.dev/doc/install
# https://pkg.go.dev/cmd/go#section-directories

# Go Environment (go env)
# https://github.com/golang/go/wiki/SettingGOPATH#zsh
# GOARCH="amd64"
# GOBIN=""
# GOFLAGS=""
# GOOS="darwin"
# GOPATH=""
# GOPROXY="https://proxy.golang.org,direct"
typeset -r GOPATH="${HOME}/go"
export GOPATH

# Adding Golang to .zshrc
typeset -r _ZSHRC="${HOME}/.zshrc"
if ! grep -i "\${PATH}:${GOPATH}" "${_ZSHRC}" 1>/dev/null 2>&1; then
(cat << EOF >> "${_ZSHRC}"
# Golang
export PATH="\${PATH}:${GOPATH}"
EOF
)
fi

# f: _chk_go, install golang and print version
_chk_go() {
    # Install go via Homebrew (fastest)
    if command -v brew 1>/dev/null 2>&1; then
      brew install -sq go
    fi
} 
_chk_go

# Check for golang
if command -v go 1>/dev/null 2>&1; then
  [ -d "${GOPATH}" ] || mkdir -p "${GOPATH}/{bin,pkg,src}";
fi
