# .zshrc
# shellcheck disable=all
# https://zsh.sourceforge.io/Guide/zshguide02.html
LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
export LANG LC_ALL

## Colors
# man ls | grep -A 50 'LSCOLORS'
CLICOLOR=1
COLORTERM=truecolor
LSCOLORS=Gxfxcxdxbxegedabagacad
zstyle ':completion:*' list-colors "${(s.:.)LSCOLORS}"
export CLICOLOR COLORTERM LSCOLORS

## Completion
autoload -U compinit
compinit
COMPLETION_WAITING_DOTS="%F{blue}…%f"
export COMPLETION_WAITING_DOTS

## ZSH w/.oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh
ZSH="${HOME}/.oh-my-zsh"
zstyle ':omz:update' mode reminder                  # Set omz update reminder
#ZSH_THEME="spaceship"                              # Set theme to load. (agnoster, rkj-repos, ys)
source $(brew --prefix)/opt/spaceship/spaceship.zsh # (brew install spaceship), https://github.com/spaceship-prompt/spaceship-prompt
export ZSH

## Plugins
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git macos brew ssh-agent tmux)

# Load SSH identities
# id_rsa gitlab_priv gitlab_work github_priv github_work
zstyle ':omz:plugins:ssh-agent' identities id_rsa

# Start oh-my-zsh
source "${ZSH}/oh-my-zsh.sh"

# Source other configs
source "${HOME}/.aliases"

## History
# zstyle -L, zstyle :completion:history-words:
zstyle ':completion:*:history-words' menu yes            # activate menu
zstyle ':completion:*:history-words' remove-all-dups yes # ignore duplicate entries
setopt EXTENDED_HISTORY

# ## Python, pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#   PYENV_ROOT="${HOME}/.pyenv"
#   PATH="${PATH}:${PYENV_ROOT}/bin"
#   export PYENV_ROOT PATH
#   eval "$(pyenv init -)"
# fi

# ## JAVA, jenv
# if command -v jenv 1>/dev/null 2>&1; then
#   PATH="${PATH}:/usr/local/opt/openjdk/bin"
#   PATH="${PATH}:${HOME}/.jenv/bin"
#   export PATH
#   eval "$(jenv init -)"
# fi

# ## Google
# # The next line updates PATH for the Google Cloud SDK.
# if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi
# # The next line enables shell command completion for gcloud.
# if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

## Dotnet
# Update PATH for Dotnet and enable shell command completion
# if [ -f "${HOME}/.dotnet/path.zsh" ]; then . "${HOME}/.dotnet/path.zsh"; fi
# if [ -f "${HOME}/.dotnet/completion.zsh" ]; then . "${HOME}/.dotnet/completion.zsh"; fi

# ## Setup others
# # Setup other services, /usr/local/sbin/, /usr/local/opt/
# PATH="${PATH}:/usr/local/sbin"
# PATH="${PATH}:/usr/local/opt/openssl@1.1/bin"
# export PATH
