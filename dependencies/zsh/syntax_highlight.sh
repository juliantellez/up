#!/bin/bash

. $(pwd)/helpers/print.sh

#
# Github: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
#
install_syntax_highlight(){
    local dir=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    if ! [[ -d $dir ]]; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $dir

        print_success "Syntax highlight installed"
    else
        print_success "Syntax highlight already installed."
    fi
}
