cd 

export LC_CTYPE="en_US.UTF-8"
xset r rate 150 50
xset b off

xmodmap ~/.xmodmaprc.`hostname -s`

/usr/local/bin/xplanet -gmtlabel -projection rectangular -date_format '%F %T %Z' &

# linux wierdness can be found in the git history
xset s 256

xclock -digital -fg green -geometry 170x16-0+0 -padding -4  -strftime ' %F %T %Z' &

xidle -program ~/xl_sel -timeout 256 &

[ `hostname -s` = "socket" ] && {
	mixer mic 10:10
	mixer pcm 80:80
	mixer monitor 40:40
	mixer vol 90:90
	xset fp+ /usr/local/share/fonts/urwfonts
	xset fp rehash
}

exec zsh -c "fvwm2 |& logger -t fvwm2"
