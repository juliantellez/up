#!/bin/bash

. $(pwd)/utils/version.sh
. $(pwd)/utils/styles.sh

printf "
${color_yellow}
╭───────────────────────────────────────────────────╮
|                                                   |
|                 ██╗   ██╗██████╗                  |
|                 ██║   ██║██╔══██╗                 |
|                 ██║   ██║██████╔╝                 |
|                 ██║   ██║██╔═══╝                  |
|                 ╚██████╔╝██║                      |
|                 ╚═════╝ ╚═╝                       |
|                                                   |
╰───────────────────────────────────────────────────╯
                   ...in no time

        Install dependencies with little effort.
           https://github.com/juliantellez/up

Version: ${UP_VERSION}
${font_reset}
"
