#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/helpers/admin_access.sh
. $(pwd)/utils/styles.sh

prompt() {
    if ask "UP will configure this machine and requires Admin access. Are you sure?" Y; then
        # Override for development
        if ! [ "${UP_ENV}" = "development" ]; then
            admin_access
        fi

        else
        print_error "UP requires 'Admin Access' to be granted; Exiting now. \n"
        exit 0
    fi;

    if [ -z "${GIT_USERNAME}" ]; then
        print_question "Git username"
        read GIT_USERNAME
        export GIT_USERNAME
    fi

    if [ -z "${GIT_EMAIL}" ]; then
        print_question "Git email"
        read GIT_EMAIL
        export GIT_EMAIL
    fi
}
