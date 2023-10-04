#!/usr/bin/env bash
set -e -x

brew update
brew install docker kubectl
brew install openjdk maven scala sbt nodejs npm

# install pyenv
brew install openssl readline sqlite3 xz zlib tcl-tk pyenv
{
  # shellcheck disable=SC2016
  echo 'export PYENV_ROOT="$HOME/.pyenv"'
  # shellcheck disable=SC2016
  echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"'
  # shellcheck disable=SC2016
  echo 'eval "$(pyenv init -)"'
} >> ~/.zshrc
