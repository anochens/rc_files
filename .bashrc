export PS1="\n\[$(tput setaf 5)\][\u@\H]\n\[$(tput sgr0)\]\[$(tput bold)$(tput setaf 2)\]  \W % \[$(tput sgr0)\]"


 #custom commands
alias ll='ls -l'
alias c="clear"
alias cls="clear"
alias vi="vim"
alias ed="vim"
alias follow="tail -f"
alias f="tail -f"
alias ..="cd .."
alias ...="cd ../.."
alias lsa="ls -a"
alias lso="ls -o"
alias m="make"
alias vim="vim -p"
alias cp="cp -p"
alias whereami="uname -n"
alias nocko="ssh anochenson@alannochenson.com"


 #modifications to existing commands
alias ls="ls -h --color=always"
alias rm="rm -i"
