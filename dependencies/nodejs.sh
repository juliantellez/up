#!/bin/bash

. $(pwd)/helpers/print.sh

install_nodejs(){
    if ! [ -x "$(command -v node)" ]; then
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
        npm install -g avn avn-nvm avn-n
        avn setup

        nodev=$(node -v)
        print_success "Using Node $nodev!"
    else
        print_success "Nodejs and NVM are already installed."
    fi
}
