# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

. `brew --prefix`/etc/profile.d/z.sh

export ZSH=$HOME/.oh-my-zsh

POWERLEVEL9K_MODE="nerdfont-complete"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm node_version background_jobs history)

plugins=(
    git
    docker
    docker-compose
    node
    npm
    zsh-syntax-highlighting
    zsh-completions
)

# reloading compleition
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# NVM #
###################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# AVN #
###################
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh"

# AWS #
##################
complete -C $(which aws_completer) aws # tab compleition


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#
# AWS USER SWITCH
# Autocompletion is defined in ~/.oh-my-zsh/completions/_aws-user
#
function aws-users() {
    cat ~/.aws/credentials | grep '\[' | grep -v '#' | tr -d '[' | tr -d ']'
};

function aws-user () {
    if [ -z $1 ];
    then
        echo "specify AWS user";
        return;
    fi
    
    exists="$(aws configure get aws_access_key_id --profile $1)"
    if [[ -n $exists ]]; then
        export AWS_DEFAULT_PROFILE=$1;
        export AWS_PROFILE=$1;
        export AWS_REGION=$(aws configure get region --profile $1);
        echo "Switched to AWS Profile: $1";
        aws configure list
    fi
}
