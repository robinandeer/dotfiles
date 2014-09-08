#!/bin/bash

set -e

# download and install Command Line Tools
if [[ ! -x /usr/bin/gcc ]]; then
  echo "Info   | Install   | xcode"
  xcode-select --install
fi

# download and install Homebrew
if [[ ! -x /usr/local/bin/brew ]]; then
  echo "Info   | Install   | homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew doctor
  brew install caskroom/cask/brew-cask
fi

# download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
  echo "Info   | Install   | Ansible"
  brew tap homebrew/dupes
  brew install apple-gcc42
  brew update
  brew install ansible
fi

# modify the PATH
# this should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH

ansible-playbook local.yml -K
