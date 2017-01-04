HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
setopt rmstarsilent
setopt extended_glob
setopt hist_ignore_dups
setopt no_check_jobs
setopt no_hup
bindkey -e

# from http://superuser.com/questions/742171/zsh-z-shell-numpad-numlock-doesnt-work
# Keypad
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

if [ `hostname -s` = "ep117" ]; then
	zstyle ':completion:*' completer _complete _ignored
	zstyle :compinstall filename '/home/ep117/mcdole/.zshrc'
	PYTHONPATH=/home/ep117/mcdole/dr_guo/py_libs/:/home/ep117/mcdole/dr_guo/planetotools/:/home/ep117/mcdole/dr_guo/RoverState/
	MSL_CHARGED_DIR=/home/ep117/mcdole/dr_guo/MSL/
	export PYTHONPATH MSL_CHARGED_DIR
else
	zstyle :compinstall filename '/home/ghz/.zshrc'
fi

autoload -Uz compinit
compinit

alias mp='mplayer -cache 8192'
alias map='mplayer -cache-min 50 -af volnorm -loop 0 -playlist'
alias maps='mplayer -af volnorm -shuffle -loop 0 -playlist'
alias mpfa='mplayer -cache 32768 -fs -framedrop -af volnorm'
alias mpfac='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfilter=all -nobps -ni -forceidx -mc 0'
alias mpfahc='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts fast:skiploopfilter=all -nobps -ni -forceidx -mc 0'
alias sc="sysctl hw | egrep '0\.temp0|cpus|setp|acpibat|acpiac|fan0'; apm -lm; date"
alias ff="ulimit -d 2048000; ulimit -c 1; firefox -P default"
alias fka="ulimit -d 2048000; ulimit -c 1; firefox -P ka"
alias xom="ulimit -d 1024000; ulimit -c 2048; xombrero"
alias cl="cal `date +%Y`"
rw () { cat /usr/share/dict/words |perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}
rl () { perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}

PS1="[%n@%m %1~]$ "
EDITOR=vi
