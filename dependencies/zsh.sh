#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/helpers/ask.sh

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
        local timestamp=$(date +%s)
        local backup_file="${HOME}/.zshrc.${timestamp}.bp"

        print_info "Creating a backup in ${backup_file}"
        cp $HOME/.zshrc $backup_file

        cp $1 $HOME/.zshrc
        print_success "Zshrc config updated"
        else
        print_error "Aborting..."
    fi
}
