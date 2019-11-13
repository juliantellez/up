#!/bin/bash

. $(pwd)/helpers/ask.sh
. $(pwd)/helpers/print.sh
. $(pwd)/utils/styles.sh

install_home_brew() {
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

install_brew() {
    if [[ ! $(brew list | grep $1) ]]; then
        print_info "Installing $1"
        brew install $1 >/dev/null
        print_success "${font_bold} ✓ installed. ${font_normal}"
    else
        print_success "$1 already installed."
    fi
}

install_cask() {
    if [[ ! $(brew cask list | grep $1) ]]; then
        print_info "Installing $1"
        brew cask install $1 --appdir=/Applications >/dev/null
        print_success "${bold} ✓ installed. ${normal}"
    else
        print_success "$1 already installed."
    fi
}

tap_cask() {
    if [[ ! $(brew cask list | grep $1) ]]; then
        print_info "Tapping cask $1"
        brew tap $1 >/dev/null
        print_success "${bold} ✓ tapped. ${normal}"
    else
        print_success "$1 already tapped."
    fi
}

install_brew_packages(){
    if [ -e $2 ]; then
        for package in $(<$2); do
            print_info "Installing ${package}"

            case $1 in
            ("brew") install_brew $package;;
        ("cask") install_cask $package;;
    ("tap") tap_cask $package;;
    esac
        done

    else
        print_error "Pagackes file not found"
    fi
}
