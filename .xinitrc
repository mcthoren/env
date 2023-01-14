cd 

export LC_CTYPE="en_US.UTF-8"
xset r rate 150 50
xset b 0 0 0
xset s 600

xmodmap ~/.xmodmaprc.`hostname -s`

/home/ghz/scripts/earth_bg -n &

xclock -geometry 190x16+27+8 -strftime ' %F %T %Z' &

xidle -program ~/xl_sel -timeout 512 &

[ `hostname -s` = "socket" ] && {
	xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" 0.3
}

# be sure to put the following line in /etc/syslog.conf:
# local0.info /var/log/fvwmlog
# and a coresponding line in /etc/newsyslog.conf
# and to touch /var/log/fvwmlog, and to rcctl restart syslogd
exec zsh -c 'fvwm2 |& logger -p local0.info -t "${$}"'
