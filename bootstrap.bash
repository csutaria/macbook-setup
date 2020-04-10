#! /usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew install pyenv
pyenv install 3.8.2
pyenv global 3.8.2
python -m venv venv
source venv/bin/activate
pip install ansible
