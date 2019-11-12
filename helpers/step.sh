step() {
    local fmt="$1"; shift
    printf "\n  ${bold}$((count++)). $fmt${normal}\n└─────────────────────────────────────────────────────○\n" "$@"
}
