NORMAL=$(tput sgr0);
BOLD=$(tput bold);
RED=$(tput setaf 1);
GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
BLUE=$(tput setaf 4);
MAGENTA=$(tput setaf 5);
CYAN=$(tput setaf 6);

branch_color () {
    if git rev-parse --git-dir >/dev/null 2>&1; then
        color=""
        if [ -z "$(git status -s)" ]; then
            color=${YELLOW}
        else
            color="$BOLD$RED"
        fi
    fi
    echo -ne $color
}

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

PS1="\[\$YELLOW\]- \W\[\$(branch_color)\]\$(parse_git_branch)\[\$YELLOW\] $ \[\$NORMAL\]"

# START GIT
alias gstash='git stash'
alias gstashp='git stash pop'
alias gstashc='git stash clear'
alias gstashl='git stash list'
alias greset='git reset --hard'
alias gck='git checkout'
alias gstatus='git status'
alias gs='git status'
alias gdiff='git diff --color=auto'
alias gpull='git pull'
alias ga='git add -A'
alias gcommit='git commit -m'
gcommitp(){ git commit -m "$1"; git push; }
gacp(){ git commit -am "$1"; git push; }
alias gbranch='git branch'
alias gbranchn='git checkout -b'
alias glg='git log --oneline'
alias glgg='git log --graph'
# END GIT

# START NAVIGATION
alias p='pwd'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias home='cd ~'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias projects='cd ~/Projects'
# END NAVIGATION

# START DOCKER
alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
alias dimages='docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"'
alias dclean='docker system prune -a'
alias drmi='docker rmi'
alias drun='docker run -it'
alias dstop='docker stop'
alias drm='docker rm'
# END DOCKER

# START MISC
alias aliases='less ~/.bash_aliases'
alias aliasesr='cp ~/Projects/dev-environment/.bash_aliases ~/.bash_aliases && source ~/.bash_aliases'
alias s='sudo'
alias install='sudo apt install'
alias serve='npx serve'
alias weather='curl wttr.in'
# END MISC

# START FUN
alias matrix='cmatrix'
alias busy='hollywood'
# END FUN