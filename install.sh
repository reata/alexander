#!/usr/bin/env bash
set -e -x

brew update
brew instal telnet
brew install docker kubectl
brew install openjdk openjdk@11 maven scala sbt npm

sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk

# install pyenv for Python version management
brew install openssl readline sqlite3 xz zlib tcl-tk pyenv
{
  # shellcheck disable=SC2016
  echo 'export PYENV_ROOT="$HOME/.pyenv"'
  # shellcheck disable=SC2016
  echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"'
  # shellcheck disable=SC2016
  echo 'eval "$(pyenv init -)"'
} >> ~/.zshrc

# install nvm for Node.js version management
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 20

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# shellcheck source=/dev/null
source ~/.local/bin/env
# install common python tools to be managed by uv
uv tool install pre-commit
uv tool install tox
