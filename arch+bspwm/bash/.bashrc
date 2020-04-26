#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\W  "

#coloring man
man() {
        LESS_TERMCAP_md=$'\E[01;31m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[01;44;33m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[01;32m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        command man "$@"
}

# Set up Node Version Manager
#source /usr/share/nvm/init-nvm.sh

#Environment Variables
export EDITOR=nvim

#Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='lsd -F'
alias l='ls'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -la'
alias lt='ls --tree'
alias ..='cd ..'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias sudo='sudo '
alias r='ranger'
alias vim='nvim'
alias vol='pulsemixer'
alias rm='rm -i'
