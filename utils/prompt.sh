#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/helpers/admin_access.sh
. $(pwd)/utils/styles.sh
. $(pwd)/main.sh

print_question "UP will download binaries and configure this machine. Are you sure? ${font_bold}(y/n)${font_reset}"
read START

if ! [[ $START =~ ^[Yy]$ ]]; then
    print_error "UP requires your consent beforehand; Exiting now. \n"
    exit 0
fi;

print_question "UP requires Admin access. Are you sure? ${font_bold}(y/n)${font_reset}"
read ADMIN_ACCESS

if [[ $ADMIN_ACCESS =~ ^[Yy]$ ]]; then
    admin_access
    else
    print_error "UP requires 'Admin Access' to be granted; Exiting now. \n"
    exit 0
fi;

print_question "git username"
read GIT_USERNAME

print_question "git email"
read GIT_EMAIL

export GIT_USERNAME
export GIT_EMAIL

main
