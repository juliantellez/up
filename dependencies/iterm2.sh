#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/create_backup.sh
. $(pwd)/helpers/print.sh

create_iterm2_configuration() {
    if ask "Would you like to create this iterm config? ${1}" Y; then
        local iterm_folder="${HOME}/Library/Application Support/iTerm2/DynamicProfiles"

        sudo mkdir -p $iterm_folder
        create_backup "iterm" "iterm" "${iterm_folder}/iterm.json"

        cp $1 "${iterm_folder}"

        print_success "Enable via: Iterm2 > Preferences > Profiles > UP Config > Other Actions > Set as default"
        else
        print_error "Aborting..."
    fi
}

fetch_iterm2_color_preset() {
    local dir=color_presets

    if ! [[ -f $dir/$1 ]]; then
        sudo mkdir -p $(pwd)/$dir
        sudo wget https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/$1 -O $(pwd)/$dir/$1 &> /dev/null
        print_success "${1} downloaded."
        else
        print_success "${1} already downloaded."
    fi
}
