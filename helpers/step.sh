#!/bin/bash

. $(pwd)/utils/styles.sh

step() {
    local fmt="$1"; shift
    printf "\n  ${font_bold}$((count++)). $fmt${font_normal}\n ─────────────────────────────────────────────────────\n" "$@"
}
