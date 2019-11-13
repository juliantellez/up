#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh

create_iterm2_configuration() {
    if ask "Would you like to create this iterm config? ${1}" Y; then
        sudo mkdir -p "${HOME}Library/Application Support/iTerm2/DynamicProfiles"
        cp $1 "${HOME}/Library/Application Support/iTerm2/DynamicProfiles"
        print_success "Enable via: Iterm2 > Preferences > Profiles > UP Config > Other Actions > Set as default"
        else
        print_error "Aborting..."
    fi
}

fetch_iterm2_color_preset() {
    local dir=color_presets
    sudo mkdir -p $(pwd)/$dir
    sudo wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/$1 -O $(pwd)/$dir/$1
}
