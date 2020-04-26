#!/bin/sh

ZATHURA_TEMP=$HOME/.config/zathura/zathura_temp
ZATHURA_SETTING=$HOME/.config/zathura/zathura_setting
ZATHURA=$HOME/.config/zathura/zathurarc

[ -f $ZATHURA_TEMP ] && rm -f $ZATHURA_TEMP
touch $ZATHURA_TEMP

. $HOME/.config/zathura/colors.sh

cat >> $ZATHURA_TEMP << EOL
#zathurarc File

#Colors
set completion-bg "$color8"
set completion-fg "$foreground"
set completion-group-bg "$color4"
set completion-group-fg "$color2"
set completion-highlight-bg "$color1"
set completion-highlight-fg "$foreground"

set recolor-lightcolor "$background"
set recolor-darkcolor "$foreground"
set default-bg "$background"

set inputbar-bg "$color3"
set inputbar-fg "$background"
set notification-bg "$background"
set notification-fg "$foreground"
set notification-error-bg "$color1"
set notification-error-fg "$foreground"
set notification-warning-bg "$color1"
set notification-warning-fg "$foreground"
set statusbar-bg "$color2"
set statusbar-fg "$color0"
set index-bg "$background"
set index-fg "$foreground"
set index-active-bg "$color1"
set index-active-fg "$foreground"
set render-loading-bg "$background"
set render-loading-fg "$foreground"

EOL

[ -f $ZATHURA_SETTING ] && cat $ZATHURA_SETTING >> $ZATHURA_TEMP

[ -f $ZATHURA ] && rm -f $ZATHURA 
mv $ZATHURA_TEMP $ZATHURA
