#!/bin/bash

. $(pwd)/dependencies/brew.sh
. $(pwd)/dependencies/nodejs.sh
. $(pwd)/dependencies/xcode.sh
. $(pwd)/dependencies/zsh.sh
. $(pwd)/helpers/test_internet_connection.sh
. $(pwd)/helpers/setup_ssh_key.sh
. $(pwd)/helpers/step.sh

step "Check: Internet connection"
test_internet_connection

step "Setup: SSH key"
setup_ssh_key

step "Setup: XCode"
install_xcode

step "Setup: Brew"
install_brew

step "Setup: Install Brew packages"
install_brew_packages

step "Setup: Zsh"
install_zsh

step "Setup: Nodejs"
install_nodejs
