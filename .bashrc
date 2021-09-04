#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend


#Failock for usig trash-put
alias rm='echo -e "\033[1;33mPermanent removal avoided\033[00m: Use trash-put instead please, or prepend \"rm\" with \"\\\""; false' #using trash-put is safer in the long run

#Gits
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' #easily manage dotfiles

#i3 specific
#alias logoff='killall i3' #alias for logging out
#alias lock='~/.config/genmon/Lock.sh' #alias for locking pc
#alias light='sudo ~/programming/scripts/bright_change.sh' #alias for brightness change

#Replacements
alias ls='lsd' #alias for lsd
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias vim='nvim' #replacing vim with nvim

alias f='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!
alias dup='kitty & disown $!' #start another window in the current dir and disown it
alias cleanup='pacman -Qdtq > pkgsForCleanup' # list potentially unneeded packages in a file, actually remove them with 'cat pkgs | pacman -Rns -' 
alias update='echo -e "\033[1;33m" && curl -s https://www.archlinux.org/feeds/news/ | xmllint --xpath //item/title\ \|\ //item/pubDate /dev/stdin | sed "s/\(<title\|<\/title>\|<pubDate>\|<\/pubDate>\)//g" | head -n 6 | sed "s/+0000//g" && echo -e "\033[0m" && echo -e "\n\033[1;33m***\033[0m Performing \033[1;33mFULL SYSTEM UPGRADE\033[0m, check for \033[0;31mMANUAL INTERVENTION\033[0m on the news ↑ \033[1;33m***\033[0m\n" && yay -Syu'
#^^^ Command to update but print arch news for needing manual interferance etc on top^^^

#Teleports
alias work='cd ~/dev/work'
alias micro='cd ~/dev/work/microsites'
alias cms='cd ~/dev/work/cms-promo'
alias uni='cd ~/uniBackup'
alias vimdots='cd ~/.config/nvim/'
alias dots='cd ~/.config/' #quickly tweak things
alias notes="nvim ~/uniBackup/TASKS/uniToDo.org"
alias books="nvim ~/media/documents/reading-list.org"
alias termdots="nvim ~/.config/alacritty/alacritty.yml"

#Needed for intended kitty terminal behevior on servers
#alias ssh="kitty +kitten ssh"

#making a function to display git branch on PS1 
git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/( \1)/'
}

export PS1="\[\033[33m\]╭─\[\033[34m\]   \[\033[00m\]\u \[\033[32m\]\$(git_branch)\[\033[00m\] \e[34;1m\w\e[0m\n\[\033[33m\]╰──  \$ \[\033[00m\]"

#Setting the system's default editor
#export ALTERNATE_EDITOR="emacs"
#export EDITOR="emacsclient --no-wait" 
export EDITOR="nvim"

#This the environment variables for pfetch 
export PF_INFO="os kernel memory uptime pkgs"
export PF_SEP=""
export PF_COL2=3

#antialias fonts in java apps
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#exporting apache poi and apache commons for java
#export CLASSPATH=/usr/share/poi-4.1.2/poi-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-schemas-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-4.1.2.jar:/usr/share/poi-4.1.2/ooxml-lib/curvesapi-1.06.jar:/usr/share/poi-4.1.2/ooxml-lib/xmlbeans-3.1.0.jar:/usr/local/Apache/commons-collections4-4.4/commons-collections4-4.4.jar:/usr/local/Apache/commons-io-2.7/commons-io-2.7.jar:/usr/local/Apache/commons-compress-1.20/commons-compress-1.20.jar

#exporting apache home dir
export APACHE_HOME=/usr/local/Apache

#pythonpath to ~/.local/bin
export PYTHONPATH=${PYTHONPATH}:~/.local/bin/

#Exporting lang
export LANG='en_US.UTF-8'

#Stopping Control-Q and Control-S from annoying me 
stty -ixon

pfetch
todo

#My own script for teleporting
#source ~/dev/programming/bash/zap/src/zap.sh
