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

bindkey -s "^[[H" "^A"
bindkey -s "^[[F" "^E"

# from http://superuser.com/questions/742171/zsh-z-shell-numpad-numlock-doesnt-work
bindkey -s "^[Op" "0"
bindkey -s "^[Ol" "."
bindkey -s "^[OM" "^M"
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
bindkey -s "^[Ok" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

zstyle :compinstall filename '/home/ghz/.zshrc'
autoload -Uz compinit
compinit

alias mp='mplayer -cache 8192'
alias map='mplayer -cache-min 50 -af volnorm -loop 0 -playlist'
alias maps='mplayer -af volnorm -shuffle -loop 0 -playlist'
alias mpfa='mplayer -cache 32768 -fs -framedrop -af volnorm'
alias mpfac='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfilter=all -nobps -ni -forceidx -mc 0'
alias mpfahc='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts fast:skiploopfilter=all -nobps -ni -forceidx -mc 0'
alias sc="~/scripts/sc"
alias ff="ulimit -d 2048000; ulimit -c 1; firefox -P default"
alias fka="ulimit -d 2048000; ulimit -c 1; firefox -P ka"
alias xom="ulimit -d 1024000; ulimit -c 2048; xombrero"
alias cl="cal `date +%Y`"
alias ts="date -u +%FT%T%Z"
rw () { cat /usr/share/dict/words |perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}
rl () { perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}
tag () { echo -en "$(hostname -s) $(ts) $(rw)\n"; }

PS1="[%n@%m %1~]$ "
EDITOR=vi
GIT_EDITOR=vi
export LYNX_CFG=~/lynx.cfg
export LC_CTYPE="en_US.UTF-8"

# http://tldp.org/HOWTO/Xterm-Title.html
if [[ $TERM == "xterm" ]] {
	ts		# not sure about the time stamp yet
	precmd () {
		print -Pn "\e]0;%D{%FT%T%Z} (%y) %n@%m:%/\a"
	}
}
