#!/bin/bash

. $(pwd)/utils/styles.sh
. $(pwd)/helpers/print.sh
. $(pwd)/helpers/admin_access.sh

echo "UP will execute its default configuration. Are you sure? ${font_highlight}(y/n)${font_reset}"
read START

echo "UP requires Admin access. Are you sure? ${font_highlight}(y/n)${font_reset}"
read ADMIN_ACCESS

if [[ $ADMIN_ACCESS =~ ^[Yy]$ ]]; then
    admin_access
    else
    print_error "Admin Access needs to be granted; Exiting now. \n"
    exit 0
fi;

echo "Would you like to watch a video while we run through the configuration? ${font_highlight}(y/n)${font_reset}"
read WATCH_VIDEO

if [[ $WATCH_VIDEO =~ ^[Yy]$ ]]; then
    open https://www.youtube.com/watch?v=SGyOaCXr8Lw;
fi;

if [[ $START =~ ^[Yy]$ ]]; then
    sh $(pwd)/main.sh
fi;
