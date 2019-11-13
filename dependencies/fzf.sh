#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/helpers/ask.sh

install_fzf () {
    local dir=$HOME/.fzf

    if ! [[ -d $dir ]]; then
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install

        print_success "fzf installed"
    else
        print_success "fzf already installed."
    fi
}
