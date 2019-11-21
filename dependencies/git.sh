#!/bin/bash

. $(pwd)/helpers/create_backup.sh
. $(pwd)/helpers/print.sh

create_git_config() {
    cp $1 $HOME/.gitconfig
    print_success "Git config created"
    cp $2 $HOME/.gitignore
    print_success "Git ignore created"

    print_question "Git username"
    read GIT_USERNAME

    print_question "Git email"
    read GIT_EMAIL

    git config --global user.name $GIT_USERNAME
    git config --global user.email $GIT_EMAIL
    git config --global core.excludesfile $HOME/.gitignore

    print_success "Git: user, email and gitignore added"
}

configure_git(){
    if ask "Would you configure git? ${1}" Y; then
        create_backup "git" "gitconfig" $HOME/.gitconfig
        create_backup "git" "gitignore" $HOME/.gitignore

        create_git_config $1 $2
    else
        print_error "Aborting..."
    fi
}
