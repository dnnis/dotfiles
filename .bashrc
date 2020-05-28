#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

alias ls='lsd' #alias for lsd
alias lock='~/.config/genmon/Lock.sh' #alias for locking pc
alias light='sudo ~/scripts/bright_change.sh' #alias for brightness change
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles_git_backup/ --work-tree=$HOME' #easily manage dotfiles
alias logoff='killall i3' #alias for logging out
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias dots='cd /home/dennis/.config/' #quickly tweak things
alias vim='nvim' #replacing vim with nvim
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\$ 'i

#making a function to display git branch on PS1 
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[32m\]╭─\[\033[00m\]⏵ \u \[\033[33m\]\$(git_branch)\[\033[00m\] \e[34;1m\w\e[0m\n\[\033[32m\]╰──⏵\$ \[\033[00m\]"

export EDITOR=nvim

export PF_INFO="os kernel uptime pkgs memory"

/home/dennis/scripts/bashinfo/bashinfo.sh
#neofetch
