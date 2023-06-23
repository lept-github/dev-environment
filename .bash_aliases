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
# stash
gstash(){ git stash; }
gstashp(){ git stash pop; }
gstashd(){ git stash drop "$1"; }
gstashl(){ git stash list; }
# misc
greset(){ git reset --hard; }
gchk(){ git checkout "$1"; }
gs(){ git status; }
# add, commit and push code
gpull(){ git pull; }
gadd(){ git add -A; echo "all changes added to the staging area."; }
gcommit(){ git commit -m "$1"; }
gcommitp(){ git commit -m "$1"; git push; }
gacp(){ git commit -am "$1"; git push; }
# branches
gbranch(){ git branch; }
gbranchn(){ git checkout -b "$1"; }
# log
alias glg='git log --oneline'
alias glgg='git log --graph'
# END GIT SECTION
