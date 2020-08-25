#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/create_backup.sh
. $(pwd)/helpers/print.sh

install_vim_plug () {
    local file=$HOME/.config/nvim/autoload/plug.vim

    if ! [[ -f $file ]]; then
        curl -fLo $file --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        print_success "Vim Plug installed"
    else
        print_success "Vim Plug already installed"
    fi
}

copy_vim_plug_configuration () {
    local file=$HOME/.config/nvim/init.vim

    if ask "Would you like to copy this vim plug config? ${1}" Y; then
        create_backup "nvim" "init.vim" $file

        cp $1 $file
        print_success "nvim config updated"
        else
        print_error "Aborting..."
    fi
}

