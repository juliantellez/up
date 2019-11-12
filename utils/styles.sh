#!/bin/bash

# Colours
color_yellow="\e[33m"

# Font Styles
font_reset="\033[0m"
font_highlight="\033[41m\033[97m"
font_dot="\033[31m▸ $reset"
font_dim="\033[2m"
font_bold=$(tput bold)
font_normal=$(tput sgr0)
font_underline="\e[37;4m"

# https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes
#
# Color       #define       Value       RGB
# black     COLOR_BLACK       0     0, 0, 0
# red       COLOR_RED         1     max,0,0
# green     COLOR_GREEN       2     0,max,0
# yellow    COLOR_YELLOW      3     max,max,0
# blue      COLOR_BLUE        4     0,0,max
# magenta   COLOR_MAGENTA     5     max,0,max
# cyan      COLOR_CYAN        6     0,max,max
# white     COLOR_WHITE       7     max,max,max

tput_color_black=0
tput_color_red=1
tput_color_green=2
tput_color_yellow=3
tput_color_blue=4
tput_color_magenta=5
tput_color_cyan=6
tput_color_white=7
