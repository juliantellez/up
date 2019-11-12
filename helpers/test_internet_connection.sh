#!/bin/bash

. $(pwd)/helpers/print.sh

test_internet_connection() {
    curl https://google.com &>/dev/null

    if [ $? -eq 0 ]; then
        print_success "Internet connection detected!"
    else
        print_error "Please check your internet connection"
        exit 0
    fi
}
