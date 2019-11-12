#!/bin/bash

. $(pwd)/helpers/print.sh

#
# test_internet_connection:
# -q quiet
# -c count
#
test_internet_connection() {
    ping -q -c1 google.com &>/dev/null && \
        print_success "Internet connection detected!" || \
        print_error "Please check your internet connection" && exit 0
}
