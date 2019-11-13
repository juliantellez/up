#!/bin/bash

. $(pwd)/helpers/print.sh
. $(pwd)/utils/styles.sh

install_brew() {
    if ! [ -x "$(command -v brew)" ]; then
        curl -fsS 'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
        export PATH="/usr/local/bin:$PATH"

        print_success "Homebrew installed."
    else
        print_success "Homebrew already installed."
    fi

    if brew list | grep -Fq brew-cask; then
        step "Uninstalling old Homebrew-Cask…"
        brew uninstall --force brew-cask
        print_success "Homebrew-Cask uninstalled!"
    fi
}

install_brew_package() {
    if [[ ! $(brew list | grep $package) ]]; then
        print "Installing $package" ${tput_color_yellow}
        brew install $package
        print_success "${font_bold}✓ installed!${font_normal}\n"
    else
        print_success "$package already installed. Skipped."
    fi
}

install_brew_packages() {
    if [ -e $(pwd)/dependencies/brew_packages.txt ]; then
        for package in $(<$(pwd)/dependencies/brew_packages.txt); do
            print "Installing ${package} \n" ${tput_color_yellow}
            install_brew_package $package
        done

        else
        print_error "Brew packages file not found"
    fi
}
