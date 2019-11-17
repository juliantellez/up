#!/bin/bash

#
# Taken from https://github.com/mathiasbynens/dotfiles/blob/master/.macos#L356
#

. $(pwd)/helpers/print.sh

DOCK_ITEM_SIZE=36
defaults write com.apple.dock tilesize -int $DOCK_ITEM_SIZE
print_success "Dock: Set the icon size of Dock items to ${DOCK_ITEM_SIZE} pixels"

defaults write com.apple.dock show-recents -bool false
print_success "Dock: Don’t show recent applications in Dock"

killall Dock
