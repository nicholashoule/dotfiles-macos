# Dotnet

## macOS

[Dotnet - macOS (Download)](https://dotnet.microsoft.com/en-us/download)

###### PATH

```
cat << EOF >> ~/.zshrc
# Dotnet
DOTNET_ROOT="${HOME}/.dotnet"
DOTNET_INSTALL_DIR="${HOME}/.dotnet"
PATH="\${PATH}:${DOTNET_ROOT}:${DOTNET_INSTALL_DIR}"
export DOTNET_ROOT DOTNET_INSTALL_DIR PATH
EOF
```

##### dotnet-install

[Dotnet - additional-tools (dotnet-install)](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script)

###### CLI

```
dotnet-install -h
```

```
...
Install Location:
  Location is chosen in following order:
    - --install-dir option
    - Environmental variable DOTNET_INSTALL_DIR
    - ${HOME}/.dotnet
```

##### dotnet-core-uninstall

[Dotnet - additional-tools ()](https://learn.microsoft.com/en-us/dotnet/core/additional-tools/uninstall-tool?tabs=macos)

###### CLI

```
dotnet-core-uninstall -h
```

```
...
Commands:
  list                         List .NET Core SDKs or Runtimes that can be removed with this tool.
  dry-run, whatif <VERSION>    Display .NET Core SDKs and Runtimes that will be removed.
  remove <VERSION>             Remove the specified .NET Core SDKs or Runtimes.
```

### Visual Studio Code (vscode)

[Visual Studio Code - Download](https://code.visualstudio.com/download)

##### CLI (code)

[Dotnet - CLI (code)](https://learn.microsoft.com/en-us/dotnet/core/additional-tools/uninstall-tool?tabs=macos)

###### PATH

```
cat << EOF >> ~/.zprofile
# Add Visual Studio Code (code)
export PATH="\${PATH}:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
```

## Helpful

```
code ~/.zshrc

dotnet-install --channel LTS
dotnet-install --runtime dotnet --version 6.0.0
dotnet-install --channel 6.0 --runtime aspnetcore

dotnet-core-uninstall list
dotnet-core-uninstall remove --sdk 6.0.201
dotnet-core-uninstall remove --runtime 6.0.3
```
