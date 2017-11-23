export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
[ -f /usr/local/bin/virtualenvwrapper.sh ] && . /usr/local/bin/virtualenvwrapper.sh

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
source .inputrc
export PS1="\W % "

export PATH=$PATH:/usr/bin/git/bin:/home/anochens/xampp/mysql/bin
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

 #custom commands
alias chrome="open -a \"Google Chrome\""
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

alias gitupdate='(git checkout master 2>&1 |grep -v '\''Already on'\'' ; git pull 2>&1|grep -v '\''Already'\'' ; git branch|grep -v master|each git branch -d 2>&1|grep -v '\''not fully merged'\''|grep -v '\''If you'\'') ; echo '\''Checked out master, pulled, and cleaned up old branches.'\'''

#sift specific commands
alias kafka-console-consumer='kafka-console-consumer.sh --zookeeper localhost:2181 --topic'
alias kcc='kafka-console-consumer.sh --zookeeper localhost:2181 --topic'
alias kafka-console-producer='kafka-console-producer.sh   --broker-list localhost:9092 --topic'
alias j="echo \"journalctl\" && journalctl -eu"
alias jf="journalctl -f -eu"
alias s="echo \"systemctl\" && sudo systemctl "
alias svcs="ls /etc/systemd/system/"
alias lsc='ls --color'
alias each="xargs -L1"

 #modifications to existing commands
alias jq="jq --sort-keys"
alias rm="rm -i"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1 branch)/'
}
export PS1="\n\[$(tput setaf 5)\][\u@\H]\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n\[$(tput sgr0)\]\[$(tput bold)$(tput setaf 2)\]  \W % \[$(tput sgr0)\] "

# fix mac scrolling issue
shopt -s checkwinsize

source ~/.profile 
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
alias excel="gnumeric"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
