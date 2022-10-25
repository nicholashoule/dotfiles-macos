#!/bin/zsh
# shellcheck disable=all
# Settings, config: https://spaceship-prompt.sh/config/intro/
# UTF-8 Symbols: https://www.w3schools.com/charsets/ref_utf_arrows.asp

## Prompt-level options
# https://spaceship-prompt.sh/config/prompt/

## Time
SPACESHIP_TIME_SHOW=true
SPACESHIP_TIME_SUFFIX="|"
SPACESHIP_TIME_FORMAT='%W%t'
SPACESHIP_TIME_COLOR='white'

## Prompt (Char)
SPACESHIP_CHAR_PREFIX="↳"
SPACESHIP_CHAR_SYMBOL=" : "
SPACESHIP_CHAR_SYMBOL_ROOT="#"

## Username & Hostname
SPACESHIP_USER_SHOW=always
SPACESHIP_USER_PREFIX="@"
SPACESHIP_USER_SUFFIX=""
SPACESHIP_USER_COLOR="green"
SPACESHIP_USER_COLOR_ROOT="red"
SPACESHIP_HOST_SHOW="always"
SPACESHIP_HOST_SHOW_FULL=true
SPACESHIP_HOST_PREFIX=""
SPACESHIP_HOST_SUFFIX="|"
SPACESHIP_HOST_COLOR="blue"
SPACESHIP_HOST_COLOR_SSH="red"

## Directory
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_PREFIX="|"
SPACESHIP_DIR_SUFFIX="|"
SPACESHIP_DIR_COLOR="cyan"

## Execution time
SPACESHIP_EXEC_TIME_SHOW=false

## Git
# https://spaceship-prompt.sh/sections/git/
SPACESHIP_GIT_STATUS_SHOW=true
