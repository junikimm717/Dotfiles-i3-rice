setxkbmap -option caps:escape
brightnessctl set 50%
MANAGER=i3
if [ $MANAGER -eq dwm ]; then
    nitrogen --restore &
    exec dwm
else
    exec $MANAGER
fi
    
