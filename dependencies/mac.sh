#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/helpers/ask.sh

configure_mac() {
    if ask "Would you like to configure this mac? ${1}" Y; then
        sh $(pwd)/dependencies/mac/dock.sh
        sh $(pwd)/dependencies/mac/finder.sh

        print_success "Mac config updated"
        else
        print_error "Aborting..."
    fi
}
