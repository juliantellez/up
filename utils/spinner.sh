spinner() {
    local INCREMENT
    local OUTPUT
    local FRAMES

    SPINNER='/-\|'

    FRAMES=${#SPINNER}

    while sleep 0.1; do
        OUTPUT="${SPINNER: INCREMENT++ % FRAMES :1}"
        printf "%s\b" "${OUTPUT}"
    done
}
