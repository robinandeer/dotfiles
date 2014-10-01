#!/usr/bin/env bash
# written by Robin Andeer <robin.andeer@gmail.com>

set -o pipefail  # return exit status of the last non-zero command
set -o errexit   # exit script when a command fails
set -o nounset   # exit when trying to use undeclared variables
# set -o xtrace    # trace what gets executed (debug)
 
main() {
  # modify the PATH, this should be updated in shell settings
  export PATH=/usr/local/bin:$PATH

  # download and install Command Line Tools
  if [[ ! -x /usr/bin/gcc ]]; then
    printf "\n%s\n" 'info   | install   | xcode'
    xcode-select --install
  fi

  # download and install Homebrew
  if [[ ! -x /usr/local/bin/brew ]]; then
    printf "\n%s\n" 'info   | install   | homebrew'

    # install homebrew
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

    # make sure system is OK
    brew doctor && brew update
  fi

  # download and install Ansible
  if [[ ! -x /usr/local/bin/ansible ]]; then
    printf "\n%s\n" 'info   | install   | ansible'

    # tap system duplicates, why?
    # brew tap homebrew/dupes
    # brew update
    # brew install apple-gcc42

    # install Ansible with homebrew
    brew install ansible
  fi

  ansible-playbook local.yml -K
}
 
main "$@"
