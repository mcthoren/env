cd 

export LC_CTYPE="en_US.UTF-8"
xset r rate 150 50
xset b off
xset s 256

xmodmap ~/.xmodmaprc.`hostname -s`

/usr/local/bin/xplanet -gmtlabel -projection rectangular -date_format '%F %T %Z' &

xclock -geometry 190x16+27+8 -strftime ' %F %T %Z' &

xidle -program ~/xl_sel -timeout 256 &

[ `hostname -s` = "socket" ] && {
	xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" -0.5
}

exec zsh -c "fvwm2 |& logger -t fvwm2"
