#!/bin/bash

. $(pwd)/helpers/print.sh

install_zsh () {
    local dir=$HOME/.oh-my-zsh

    if ! [[ -d $dir ]]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        print_success "Oh my Zsh installed"
    else
        print_success "Oh my Zsh already installed."
    fi
}
