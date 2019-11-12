#!/bin/bash

echo "\n"
printf "
╭───────────────────────────────────────────────────╮
|                                                   |
|                 ██╗   ██╗██████╗                  |
|                 ██║   ██║██╔══██╗                 |
|                 ██║   ██║██████╔╝                 |
|                 ██║   ██║██╔═══╝                  |
|                 ╚██████╔╝██║                      |
|                 ╚═════╝ ╚═╝   in no time!         |
|                                                   |
╰───────────────────────────────────────────────────╯
"
echo "\n\n"

echo "UP will execute its default configuration. Are you sure? (y/n)"
read START

echo "Would you like to watch a video while we run through the configuration? (y/n)"
read WATCH_VIDEO

if [[ $WATCH_VIDEO =~ ^[Yy]$ ]]; then
    open https://www.youtube.com/watch?v=SGyOaCXr8Lw;
fi;


if [[ $START =~ ^[Yy]$ ]]; then
    sh $(pwd)/main.sh
fi;

