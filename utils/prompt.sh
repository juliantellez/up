#!/bin/bash

. $(pwd)/utils/styles.sh

echo "UP will execute its default configuration. Are you sure? ${font_highlight}(y/n)${font_reset}"
read START

echo "Would you like to watch a video while we run through the configuration? ${font_highlight}(y/n)${font_reset}"
read WATCH_VIDEO

if [[ $WATCH_VIDEO =~ ^[Yy]$ ]]; then
    open https://www.youtube.com/watch?v=SGyOaCXr8Lw;
fi;


if [[ $START =~ ^[Yy]$ ]]; then
    sh $(pwd)/main.sh
fi;
