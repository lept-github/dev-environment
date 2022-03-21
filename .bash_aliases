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

# START GIT SECTION
# git stash
gsd(){ git stash drop "$1"; }
alias gsl='git stash list'
# git commit and push code
alias gr='git reset --hard'
alias gp='git pull'
gcp(){ git add -A; git commit -m "$1"; git push; }
ga(){ git add -A; echo "all changes added to the staging area."; }
gc(){ git checkout "$1"; }
alias gs='git status'
# git branches
alias gb='git branch'
gbn(){ git checkout -b "$1"; }
# git log
alias gl='git log --oneline'
alias glg='git log --graph'
# END GIT SECTION

# MISC
alias ws='~/Apps/WebStorm-213.6777.57/bin/webstorm.sh'
alias webstorm='ws'
