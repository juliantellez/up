#!/bin/bash

. $(pwd)/utils/styles.sh

#
# print "foo" ${tput_color_red}
# - tput setaf: Set foreground color
# - tput sgr0: Turn off all attributes
# see http://linuxcommand.org/lc3_adv_tput.php#text-effects
#
print() {
 printf "%b" \
        "$(tput setaf "$2")" \
        "$1\n" \
        "$(tput sgr0 2> /dev/null)"
}

print_success() {
    print "  [✓] $1" ${tput_color_green}
}

print_warning() {
    print "  [!] $1" ${tput_color_yellow}
}

print_error() {
    print "  [𝘅] $1 $2" ${tput_color_red}
}

print_question() {
    print "  [?] $1" ${tput_color_cyan}
}

print_info() {
    print "  [info] $1" ${tput_color_cyan}
}