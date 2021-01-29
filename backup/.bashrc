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
gac() {
    git add . && git commit
}
v() {
    nvim $@
}
z() {
    zathura $@ & disown
}
s() {
    ls -a $@
}
c() {
    clear
}
r() {
    ranger $@
}
e() {
    exit $@
}
a() {
    alsamixer
}
mkcd() {
    mkdir $1 && cd $1
}

export EDITOR=nvim
export QT_STYLE_OVERRIDE=Fusion
