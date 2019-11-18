#!/bin/bash

#
# Taken from https://github.com/maxgallo/dotfiles/blob/master/macos.sh#L101
#

. $(pwd)/helpers/print.sh

defaults write com.apple.systemuiserver menuExtras -array   \
    "/System/Library/CoreServices/Menu Extras/Volume.menu"  \
    "/System/Library/CoreServices/Menu Extras/AirPort.menu" \
    "/System/Library/CoreServices/Menu Extras/Battery.menu" \
    "/System/Library/CoreServices/Menu Extras/VPN.menu"     \
    "/System/Library/CoreServices/Menu Extras/Bluetooth.menu";

print_success "Menubar: adds Airport, Bluetooth, Battery, Volume"

defaults write com.apple.menuextra.battery ShowPercent -string "YES"
print_success "Menubar: Show Battery Percentage"

killall SystemUIServer
