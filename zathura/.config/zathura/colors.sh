# Shell variables

# Special
foreground='#ffffff'
background='#191a2a'
cursor='#ffffff'

# Colors
color0='#191a2a'
color1='#ff3333'
color2='#30e82f'
color3='#ffa031'
color4='#2d4682'
color5='#ff3fbc'
color6='#28bbc6'
color7='#a4b3e2'
color8='#333651'
color9='#ff6565'
color10='#68d66f'
color11='#eef241'
color12='#3c72f3'
color12='#3c72f3'
color14='#8af9f7'
color15='#ffffff'

# FZF colors
export FZF_DEFAULT_OPTS="
    $FZF_DEFAULT_OPTS
    --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
    --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

# Fix LS_COLORS being unreadable.
export LS_COLORS="${LS_COLORS}:su=30;41:ow=30;42:st=30;44:"
