#!/usr/bin/env bash
set -e

# packages needed for the install process
sudo apt update
sudo apt -y install curl apt-transport-https lsb-release gnupg

# add sbt repository and signing key
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" \
 | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sbt.gpg > /dev/null

# set up apt mirror
sudo sed -i "s@http://.*archive.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list
sudo sed -i "s@http://.*security.ubuntu.com@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list

# update repository information and install our packages
sudo apt update
sudo apt -y install default-jdk git maven nodejs npm python3 sbt scala ssh

# install packages for daily development
sudo apt -y install vim

# install packages for Python build from source, which is needed for pyenv
sudo apt -y install build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
