export PS1="\W % "
export RUBYOPT="rubygems"


export PATH=$PATH:/usr/bin/git/bin:/home/anochens/xampp/mysql/bin
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
alias andrew="ssh unix.andrew.cmu.edu"
alias shark="ssh shark.ics.cs.cmu.edu"
alias whereami="uname -n"
alias mako="ssh makoshark.ics.cs.cmu.edu"
alias nocko="ssh anochenson@184.168.37.1"



 #modifications to existing commands
alias ls="ls -h --color=always"
alias rm="rm -i"      
alias gccf="gcc -ansi -pedantic -W -Wall -Wextra -O2"
