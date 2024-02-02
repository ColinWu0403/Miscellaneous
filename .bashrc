# Basic aliases to have common ls commands and add colors
alias ls="ls --color=auto"
alias la="ls -a"
alias ll="ls -l"

# Strip permissions from group and others when creating new files
umask 077
