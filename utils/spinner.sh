#!/bin/bash

#
# Example usage:
# main &
# MAIN_PID=$!
# spinner $MAIN_PID
#
spinner() {
    local INCREMENT
    local OUTPUT
    local FRAMES

    SPINNER='/-\|'

    FRAMES=${#SPINNER}

    while kill -0 $1 &> /dev/null; do
        sleep 0.1
        OUTPUT="${SPINNER: INCREMENT++ % FRAMES :1}"
        printf "%s\b" "${OUTPUT}"
    done
}
