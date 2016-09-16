# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ghz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias mp='mplayer -cache 8192'
alias map='mplayer -cache-min 50 -af volnorm -loop 0 -playlist'
alias maps='mplayer -af volnorm -shuffle -loop 0 -playlist'
alias mpfa='mplayer -cache 32768 -fs -framedrop -af volnorm'
alias mpfac='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts lowres=1:fast:skiploopfil
ter=all -nobps -ni -forceidx -mc 0'
alias mpfahc='mplayer -cache 32768 -fs -framedrop -af volnorm  -vfm ffmpeg -lavdopts fast:skiploopfilter=all
-nobps -ni -forceidx -mc 0'
alias sc="sysctl hw | egrep '0\.temp0|cpus|setp|acpibat|acpiac|fan0'; apm -lm; date"
alias ff="ulimit -d 2048000; ulimit -c 1; firefox -P default"
alias fka="ulimit -d 2048000; ulimit -c 1; firefox -P ka"
alias xom="ulimit -d 1024000; ulimit -c 2048; xombrero"
alias cl="cal `date +%Y`"
rw () { cat /usr/share/dict/words |perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}
rl () { perl -e 'rand $. < 1 && ($x = $_) while <>; print $x' ;}

PS1="[%n@%m:%~]$ "
EDITOR=vi
