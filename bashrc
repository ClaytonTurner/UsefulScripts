# Throw this in a .bashrc or .bash_profile

###################
# lolcat aliasing #
###################

alias ls="ls | lolcat"
alias gs="git status | lolcat"
alias pwd="pwd | lolcat"
alias branch="git branch | grep \* | lolcat"

#######################
# Git branch coolness #
#######################
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[34;1m\]\u\[\e[0m\]\[\e[33;1m\]@\[\e[0m\]\[\e[32;1m\]\h\[\e[0m\] \[\e[31;1m\]'\t'\[\e[0m\] \[\e[34;1m\]'\w'\[\e[0m\]\n\[\e[32;1m\]>\[\e[0m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

