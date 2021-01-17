#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

screen() {
    brightnessctl set $1%
}
export EDITOR=nvim
export QT_STYLE_OVERRIDE=Fusion
