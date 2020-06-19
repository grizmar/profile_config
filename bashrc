export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoredups:ignorespace:erasedups
export HISTIGNORE="ls:ps:history"
shopt -s histappend
PROMPT_COMMAND='history -a; history -n'
shopt -s cdspell

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
export PS1="\u \[\033[1;32m\]\w\[\033[1;34m\]\$(parse_git_branch)\[\033[00m\] $ "

alias php_bash='cd ~/projects/b2c-api/ && docker exec -it b2c-fpm sh'
