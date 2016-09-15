cd 
xset r rate 150 50
xset s 256

(sleep 8; xclock -digital -fg green -geometry 170x16-0+0 -padding -2  -strftime '%F %T %Z') &

xidle -program ~/xl_sel -timeout 256 &

xmodmap -e "keycode 113 = Multi_key"
xmodmap -e "keycode 117 = Multi_key"
xmodmap -e "keycode 22 = BackSpace BackSpace BackSpace BackSpace BackSpace BackSpace"
# xmodmap -e "keycode 22 = BackSpace Terminate_Server BackSpace Terminate_Server BackSpace Terminate_Server"

export LC_CTYPE="en_US.UTF-8"

# if [ `hostname -s` == "viki" ]; then
#         xrandr --output LVDS --off --output VGA --auto;
# projector on
# xrandr --output LVDS --auto --output VGA --auto --same-as LVDS
# projector off
# xrandr --output LVDS --auto --output VGA --off
# fi

# xplanet -label -localtime 8 -projection orthographic -north orbit &
xplanet -label  -projection rectangular &

exec fvwm
