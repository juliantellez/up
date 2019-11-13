#!/bin/bash

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

install_cask() {
    if [[ ! $(brew cask list | grep $cask) ]]; then
        print "Installing $cask" ${tput_color_yellow}
        brew cask install $cask --appdir=/Applications >/dev/null
        print_success "${bold} ✓ installed! ${normal}\n"
    else
        print_success "$cask already installed."
    fi
}

install_casks() {
    if [ -e $1 ]; then
        for cask in $(<$1); do
            print "Installing ${cask} \n" ${tput_color_yellow}
            install_cask $cask
        done

        else
        print_error "Brews file not found"
    fi
}

install_brew() {
    if [[ ! $(brew list | grep $brew) ]]; then
        print "Installing $brew" ${tput_color_yellow}
        brew install $brew >/dev/null
        print_success "${font_bold} ✓ installed! ${font_normal} \n"
    else
        print_success "$brew already installed."
    fi
}

install_brews() {
    if [ -e $1 ]; then
        for brew in $(<$1); do
            print "Installing ${brew} \n" ${tput_color_yellow}
            install_brew $brew
        done

        else
        print_error "Brews file not found"
    fi
}
