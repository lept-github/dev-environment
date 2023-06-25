function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xvjf $1    ;;
            *.tar.gz)   tar xvzf $1    ;;
            *.bz2)      bunzip2 $1     ;;
            *.rar)      unrar x $1     ;;
            *.gz)       gunzip $1      ;;
            *.tar)      tar xvf $1     ;;
            *.tbz2)     tar xvjf $1    ;;
            *.tgz)      tar xvzf $1    ;;
            *.zip)      unzip $1       ;;
            *.Z)        uncompress $1  ;;
            *.7z)       7z x $1        ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Enable advanced completion options
if [[ -r "/usr/share/bash-completion/bash_completion" ]]; then
    . "/usr/share/bash-completion/bash_completion"
fi

# History search with arrow keys
if [[ $- =~ .*i.* ]]; then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# Syntax highlighting for `cat` and `less`
if [[ -x "$(command -v pygmentize)" ]]; then
    export LESS='-R'
    export PAGER='pygmentize -g'
fi