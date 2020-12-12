 export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
    
    # Git
    function parse_git_branch {
      ref=$(git symbolic-ref HEAD 2> /dev/null) || return
      echo "("${ref#refs/heads/}")"
    }
    export PS1="\[\033[1;32m\][\w]\[\033[1;33m\]\$(parse_git_branch)\[\033[0m\] "
    export EDITOR='atom --wait'
    export VISUAL='atom --wait'
    
    eval "$(hub alias -s)"
    
    if which rbenv > /dev/null; then
     eval "$(rbenv init -)"
    fi
