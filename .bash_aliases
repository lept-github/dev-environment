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
gstash(){ git stash; }
gstashp(){ git stash pop; }
gstashd(){ git stash drop "$1"; }
gstashl(){ git stash list; }
greset(){ git reset --hard; }
gchk(){ git checkout "$1"; }
gstatus(){ git status; }
gdiff(){ git diff --color=auto; }
gpull(){ git pull; }
gadd(){ git add -A; echo "all changes added to the staging area."; }
gcommit(){ git commit -m "$1"; }
gcommitp(){ git commit -m "$1"; git push; }
gacp(){ git commit -am "$1"; git push; }
gbranch(){ git branch; }
gbranchn(){ git checkout -b "$1"; }
alias glg='git log --oneline'
alias glgg='git log --graph'
# END GIT

# START NAVIGATION
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
alias s='sudo'
alias serve='npx serve'
alias weather='curl wttr.in'
reload(){ cp ~/Projects/dev-environment/.bash_aliases ~/.bash_aliases && source ~/.bash_aliases; }
# END MISC