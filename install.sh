#!/usr/bin/env bash
set -e -x

brew update
brew upgrade
brew install telnet htop pstree
brew install docker kubectl
brew install gh

# install SDKMAN for Java version management
curl -s "https://get.sdkman.io?ci=true" | bash
# initialize SDKMAN in the current shell session
source "$HOME/.sdkman/bin/sdkman-init.sh"
# install Java versions
sdk install java 8.0.492-zulu
sdk install java 11.0.31-zulu
sdk install java 17.0.19-zulu
sdk install java 21.0.11-zulu
sdk install java 25.0.3-zulu
sdk default java 8.0.492-zulu
sdk install maven
sdk install gradle
# install Scala
sdk install scala
sdk install sbt

# install pyenv for Python version management
brew install openssl readline sqlite3 xz zlib tcl-tk pyenv
# configure pyenv in ~/.zshrc (idempotent)
if ! grep -q 'PYENV_ROOT' ~/.zshrc; then
  {
    # shellcheck disable=SC2016
    echo 'export PYENV_ROOT="$HOME/.pyenv"'
    # shellcheck disable=SC2016
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"'
    # shellcheck disable=SC2016
    echo 'eval "$(pyenv init -)"'
  } >> ~/.zshrc
fi
# initialize pyenv in the current shell session
export PYENV_ROOT="$HOME/.pyenv" && export PATH="$PYENV_ROOT/bin:$PATH" && eval "$(pyenv init -)"
# install Python versions
pyenv install --skip-existing 3.14 3.13 3.12 3.11 3.10
pyenv global 3.14 3.13 3.12 3.11 3.10

# install nvm for Node.js version management
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
nvm install 24
nvm install 26
nvm alias default 22

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
# shellcheck source=/dev/null
source ~/.local/bin/env
# install common python tools to be managed by uv
uv tool install pre-commit
uv tool install tox
uv tool install ruff

# AI agent
# Claude Code
curl -fsSL https://claude.ai/install.sh | bash
# Gemini CLI
npm install -g @google/gemini-cli
