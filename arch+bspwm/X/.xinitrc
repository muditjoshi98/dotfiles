#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


xautolock -time 5 -locker "slock & sleep 2 && xset dpms force off" -corners +-00 -cornerdelay 3 -cornerredelay 120 -detectsleep &
libinput-gestures-setup start &
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &
udiskie -As -f "st -e ranger" &
unclutter &
numlockx &
fehbg &
sxhkd &
picom --experimental-backends &
polybarstart &
exec bspwm
