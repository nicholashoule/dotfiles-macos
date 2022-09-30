# .zshrc
# shellcheck disable=all
# https://zsh.sourceforge.io/Guide/zshguide02.html
# User
declare DEFAULT_USER=""
DEFAULT_USER="$(whoami)" # Set default user for the ZSH themes
export DEFAULT_USER

# Completion
autoload -U compinit
compinit

# History
# zstyle -L, zstyle :completion:history-words:
zstyle ':completion:*:history-words' menu yes            # activate menu
zstyle ':completion:*:history-words' remove-all-dups yes # ignore duplicate entries

# LSCOLORS
# man ls | grep -A 50 'LSCOLORS'
export CLICOLOR=1
export COLORTERM=truecolor
export LSCOLORS=Gxfxcxdxbxegedabagacad
zstyle ':completion:*' list-colors "${(s.:.)LSCOLORS}"

# ZSH w/.oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh
export ZSH="${HOME}/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
export plugins=(git history-substring-search macos brew ssh-agent tmux)

# Options
export ZSH_THEME="agnoster"         # Set theme to load. (agnoster, rkj-repos, ys)
export COMPLETION_WAITING_DOTS=true # display red dots whilst waiting for completion.

# Load SSH identities
# id_rsa gitlab_priv gitlab_work github_priv github_work
zstyle ':omz:plugins:ssh-agent' identities id_rsa

# Start oh-my-zsh
zstyle ':omz:update' mode reminder
source "${ZSH}/oh-my-zsh.sh"

# Source alias config
source "${HOME}/.aliases"

## Google
# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

## JAVA, jenv
# if command -v jenv 1>/dev/null 2>&1; then
#   export PATH="/usr/local/opt/openjdk/bin:$PATH"
#   export PATH="$HOME/.jenv/bin:$PATH"
#   eval "$(jenv init -)"
# fi

## Python, pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#   export PYENV_ROOT="$HOME/.pyenv"
#   export PATH="$PYENV_ROOT/bin:$PATH"
#   eval "$(pyenv init -)"
# fi

## Others
# Setup other services, /usr/local/opt/
#export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
