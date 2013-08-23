source ~/dots/bash_prompt.sh

# vi mode
set -o vi
export EDITOR=/usr/bin/vi
set editing-mode vi
set keymap vi

# for ruby on rails

alias ll='ls -la'
alias lls='ls -l'
alias wp='cd ~/workspace'
 
alias rs='rails s -p 3008'
alias rc='rails c'
alias rg='rails g'

alias bd='bundle'
alias bx='bundle exec'

# for tmux
alias tm='tmux -2'
