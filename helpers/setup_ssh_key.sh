#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/utils/styles.sh

check_github_key() {
    # Override for development
    if [ "${UP_ENV}" = "development" ]; then
        return 0;
    fi

    if ask "SSH key found. Enter it in Github?" Y; then
        print 'Public key copied! Paste into Github…' ${tput_color_green}
        [[ -f $pub ]] && cat $pub | pbcopy
        open 'https://github.com/account/ssh'
        read -p "   Press enter to continue..."
        print_success "SSH key"
        return
    else
        print_success "SSH key";
    fi
}

create_ssh_key() {
    if ask "No SSH key found. Create one?" Y; then
        print_info "Creating ssh-key";
        ssh-keygen -t rsa;
        check_github_key;
    else
        return 0;
    fi
}

setup_ssh_key() {
    local pub=$HOME/.ssh/id_rsa.pub

    if ! [[ -f $pub ]]; then
        create_ssh_key
    else
        check_github_key
    fi
}
