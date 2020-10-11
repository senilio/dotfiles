#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias xup="xrdb ~/.Xresources"
alias vi=vim
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export TERM=xterm
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend

PS1='[\u@\h \W]\$ '

### export QT_SCALE_FACTOR=0.5
export GDK_DPI_SCALE=0.8

_gopass_bash_autocomplete() {
     local cur opts base
     COMPREPLY=()
     cur="${COMP_WORDS[COMP_CWORD]}"
     opts=$( ${COMP_WORDS[@]:0:$COMP_CWORD} --generate-bash-completion )
     local IFS=$'\n'
     COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
     return 0
 }

complete -F _gopass_bash_autocomplete gopass

PATH="$PATH:~/go/bin/:~/.local/bin"
