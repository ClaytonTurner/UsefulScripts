# Throw this in a .bashrc or .bash_profile

####################
# Django Shortcuts #
####################
alias djshowmigrations="./manage.py showmigrations | grep '\[ \]\|^[a-z]' | grep '[  ]' -B 1"

##########
# Docker #
##########
# Removes dangling images from docker
alias cleandocker='docker rmi $(docker images -q --filter "dangling=true")'
# Purge docker images
alias docker-nuke='docker stop $(docker ps -a -q) && docker rm -f $(docker ps -a -q) && docker image rm -f $(docker image ls -a -q) && docker volume rm -f $(docker volume ls -q)'

#################
# Git Shortcuts #
#################
alias gs="git status"

# Clean up merged branches
alias gcmb="git branch --merged | grep -Ev '(^\*|master|main|develop)' | xargs git branch -d"

# Prune and Delete branches removed from remote
alias gpd="git fetch --prune && git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -D"

# Git CLI
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[34;1m\]\u\[\e[0m\]\[\e[33;1m\]@\[\e[0m\]\[\e[32;1m\]\h\[\e[0m\] \[\e[31;1m\]'\t'\[\e[0m\] \[\e[34;1m\]'\w'\[\e[0m\]\n\[\e[32;1m\]>\[\e[0m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

# Limit passphrase input
eval `ssh-agent -s` 1> /dev/null
alias sshc="ssh-add ~/.ssh/id_rsa"
