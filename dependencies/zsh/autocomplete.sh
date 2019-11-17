#!/bin/bash

. $(pwd)/helpers/print.sh

#
# Github: https://github.com/zsh-users/zsh-completions#oh-my-zsh
#
install_autocomplete(){
    local dir=${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

    if ! [[ -d $dir ]]; then
        git clone https://github.com/zsh-users/zsh-completions $dir
        print_success "Autocomplete installed"
    else
        print_success "Autocomplete already installed."
    fi
}
