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

#Environment Variables
export EDITOR=nvim

#Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='exa -F --icons --group-directories-first'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias ..='cd ..'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias sudo='sudo '
alias vim='nvim'
alias rm='rm -I'

PF_INFO="ascii title os kernel uptime pkgs memory palette" pfetch
