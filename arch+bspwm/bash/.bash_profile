#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


export PATH="${PATH}:/home/mudit/.local/bin"

#Graphic Card Variable
#export LIBVA_DRIVER_NAME=radeonsi
#export VDPAU_DRIVER=radeonsi
#export DRI_PRIME=1  #Used to use Graphic Card


#XDG Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx ; fi

#set -o vim

#if [[ ! $TERM = screen ]]; then
#    exec tmux
#fi
