#!/bin/bash

. $(pwd)/helpers/print.sh

install_nodejs(){
    local dir=$HOME/.nvm

    if ! [[ -d $dir ]]; then
        curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

        print_info "Installing latest Node"
        nvm install node
        nvm use node
        nvm run node --version
        nodev=$(node -v)

        print_success "Using Node $nodev!"
    else
        print_success "Node + NVM already installed"
    fi
}
