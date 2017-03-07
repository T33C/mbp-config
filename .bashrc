export PATH="$HOME/.pyenv/bin:/usr/local/bin:$PATH"
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PS1='\[\e[01;31m\]\H/\u\[\e[37m\]:\[\e[33m\]\w\[\e[31m\]\$\[\033[00m\] '
