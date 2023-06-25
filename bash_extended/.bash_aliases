# GIT
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
alias gpush='git push'
alias ga='git add -A'
alias gc='git commit -m'
alias gcommit='git commit -m'
gcommitp(){ git commit -m "$1"; git push; }
gacp(){ git commit -am "$1"; git push; }
alias gbranch='git branch'
alias gbranchn='git checkout -b'
alias glg='git log --oneline'
alias glgg='git log --graph'

# NAVIGATION
alias c='clear'
alias p='pwd'
alias ls='ls --color=auto'
alias ll='ls -hl --color=auto'
alias la='ls -hla --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias home='cd ~'
alias desktop='cd ~/Desktop'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias projects='cd ~/Projects'

# DOCKER
# alias dps='docker ps --format "table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}"'
# alias dimages='docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"'
# alias dclean='docker system prune -a'
# alias drmi='docker rmi'
# alias drun='docker run -it'
# alias dstop='docker stop'
# alias drm='docker rm'

# MISC
alias s='sudo'
alias source='source ~/.bashrc'
alias install='sudo apt install'
alias serve='npx serve'

# FUN
alias weather='curl wttr.in'
alias matrix='cmatrix'
alias busy='hollywood'
