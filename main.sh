#!/bin/bash

. $(pwd)/dependencies/brew.sh
. $(pwd)/dependencies/nodejs.sh
. $(pwd)/dependencies/powerlevel9k.sh
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

step "Install: HomeBrew"
install_home_brew

step "Install: Brews"
install_brews $(pwd)/packages/brews.txt

step "Install: Casks"
install_casks $(pwd)/packages/casks.txt

step "Install: Nodejs"
install_nodejs

step "Install: Oh My Zsh"
install_zsh

step "Install: Powerlevel9k"
install_powerlevel9k

step "Install: Powerlevel9k"
install_powerline_fonts "HackNerdFontComplete-Regular 12" "Monaco 12"
