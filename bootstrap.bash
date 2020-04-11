#! /usr/bin/env bash

# Set up homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

# Install pyenv
brew install pyenv
eval "$(pyenv init -)"

# Set up a new python installation
pyenv install 3.8.2
pyenv local 3.8.2
pip install --upgrade pip

# Create a virtualenv to install ansible to
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install ansible

./playbook.yaml
