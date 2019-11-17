#!/bin/bash

. $(pwd)/helpers/print.sh

install_xcode() {
    if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
        test -d "${xpath}" && test -x "${xpath}" ; then
        print_success "Xcode already installed."
        else
        xcode-select --install
        print_success "Please install xcode and re-run UP!"
        exit 1
    fi
}
