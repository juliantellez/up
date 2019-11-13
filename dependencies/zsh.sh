#!/bin/bash

. $(pwd)/helpers/print.sh

install_zsh () {
    if ! [ -x "$(command -v zsh)" ]; then
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
        print_success "Zsh installed"
    else
        print_success "Zsh already installed."
    fi
}
