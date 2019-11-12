#!/bin/bash

. $(pwd)/utils/styles.sh

#
# print "foo" ${tput_color_red}
#
print() {
 printf "%b" \
        "$(tput setaf "$2")" \
        "$1"
}

print_success() {
    print "  [✓] $1\n" ${tput_color_green}
}

print_warning() {
    print "  [!] $1\n" ${tput_color_yellow}
}

print_error() {
    print "  [𝘅] $1 $2\n" ${tput_color_red}
}

print_question() {
    print "  [?] $1\n" ${tput_color_yellow}
}
