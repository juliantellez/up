#!/bin/bash

#
# Taken from https://github.com/mathiasbynens/dotfiles/blob/master/.macos#L241
#

. $(pwd)/helpers/print.sh

defaults write com.apple.finder QuitMenuItem -bool true
print_success "Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons"

defaults write com.apple.finder AppleShowAllFiles -bool true
print_success "Finder: show hidden files by default"

defaults write NSGlobalDomain AppleShowAllExtensions -bool true
print_success "Finder: show all filename extensions"

defaults write com.apple.finder ShowPathbar -bool true
print_success "Finder: show path bar"

defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
print_success "Finder: When performing a search, search the current folder by default"

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
print_success "Finder: Avoid creating .DS_Store files on network or USB volumes"

killall Finder
