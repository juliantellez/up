#!/bin/bash

. $(pwd)/helpers/print.sh

#
# GitHub: https://github.com/Powerlevel9k/powerlevel9k 
#
install_powerlevel9k () {
    local dir=$HOME/.oh-my-zsh/custom/themes/powerlevel9k

    if ! [[ -d $dir ]]; then
        git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

        print_success "PowerLevel9k installed"
    else
        print_success "PowerLevel9k already installed."
    fi
}

#
# Install: https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#manual
# Fonts: https://github.com/romkatv/powerlevel10k/issues/671#issuecomment-621031981
#
install_powerlevel10k () {
    local dir=$HOME/.oh-my-zsh/custom/themes/powerlevel10k
     if ! [[ -d $dir ]]; then
        git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
        print_success "PowerLevel10k installed"
    else
        print_success "PowerLevel10k already installed."
    fi
}
