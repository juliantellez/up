#!/bin/bash

. $(pwd)/helpers/print.sh

# Update existing `sudo` time stamp
# until this script has finished.
#
# https://gist.github.com/cowboy/3118588
admin_access() {

    # Ask for the administrator password upfront.
    sudo -v &> /dev/null

    # Update existing `sudo` time stamp
    # until this script has finished.
    #
    # https://gist.github.com/cowboy/3118588

    # Keep-alive: update existing `sudo` time stamp until script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    print_success "Admin Access Granted"
}
