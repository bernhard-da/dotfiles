#
# ~/.bashrc
#

source /usr/share/git/completion/git-prompt.sh
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWDIRTYSTATE=true

VISUAL="/usr/bin/vim"
EDITOR="/usr/bin/vim"
export VISUAL
export EDITOR

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# save path on cd
#function cd {
#  builtin cd $@
#  pwd > ~/.last_dir
#}

# restore last saved path
#if [ -f ~/.last_dir ]
#  then cd `cat ~/.last_dir`
#fi


alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
alias up='sudo packer -Syu'
alias remove='sudo pacman -Rcs'
alias inst='sudo packer -S'
alias search='packer -Ss'
alias blog='ssh root@beim-entschleunigen.net -p 2105'

alias ll='ls -lah'
alias vpn='sudo openvpn /home/bernhard/skripts/vpn/bernhard.ovpn'
alias gem='cd /home/gemeinsam/Dropbox/Auszeit'
alias rscripts='cd /home/gemeinsam/Dropbox/Auszeit/RScripts'
alias bc='/home/bernhard/Scripts/bc.r'
alias gn='sudo systemctl poweroff'
alias mountenc='encfs /media/nasn/backups_encrypted/home_bernhard_encrypted /media/nasn/backups_encrypted/home_bernhard'
