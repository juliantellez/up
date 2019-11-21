#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/create_backup.sh
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

copy_zsh_configuration () {
    if ask "Would you like to copy this zshrc config? ${1}" Y; then
        create_backup "zsh" "zshrc" $HOME/.zshrc

        cp $1 $HOME/.zshrc
        print_success "Zshrc config updated"
        else
        print_error "Aborting..."
    fi
}
