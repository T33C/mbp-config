export PATH="/usr/local/bin:$PATH"
export PS1='\[\e[01;31m\]\H/\u\[\e[37m\]:\[\e[33m\]\w\[\e[31m\]\$\[\033[00m\] '
alias ls='/usr/local/bin/gls --color -alh --group-directories-first'
alias qstudio='java -jar ~/Code/q/Workshop/Studio/studio.jar'
alias q='QHOME=~/q rlwrap -r ~/q/m32/q'
