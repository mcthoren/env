cd 

export LC_CTYPE="en_US.UTF-8"
xset r rate 150 50
xset b off

xmodmap ~/.xmodmaprc.`hostname -s`

xplanet -gmtlabel -projection rectangular -date_format '%F %T %Z' &

# work is an ubuntu machine with some weirdness to it
if [ `hostname -s` = "ep117" ]; then

	DISPLAY=:0
	xset dpms 600

	xautolock -time 4 -locker /home/ep117/mcdole/xl_sel &

	xrdb ~/.Xdefaults
	gsettings set org.gnome.desktop.background picture-uri ~/background/20150305_105222.jpg

	TZ=/usr/share/zoneinfo/Europe/Berlin xclock -digital -fg green -padding -6 -geometry 175x15-0+0 -strftime ' %F %T %Z' &
	TZ=UTC xclock -digital -fg green -padding -6 -geometry 169x15+0+0 -strftime ' %F %T %Z' &
else
	xset s 256

	(sleep 8; xclock -digital -fg green -geometry 170x16-0+0 -padding -2  -strftime '%F %T %Z') &

	xidle -program ~/xl_sel -timeout 256 &

	exec fvwm
fi
