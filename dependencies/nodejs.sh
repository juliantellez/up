#!/bin/bash

. $(pwd)/helpers/print.sh

install_nodejs(){
    if [ -x nvm ]; then
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

        print_success "NVM installed"
        print "Installing Nodejs" ${tput_color_yellow}

        nvm install stable
        nvm use stable
        nvm run stable --version
        nodev=$(node -v)
        print_success "Using Node $nodev!"
    else
        print_success "NVM/Node already installed."
    fi
}
