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
    ls $@
}
c() {
    clear
}
r() {
    source ranger $@
}
e() {
    exit $@
}
a() {
    alsamixer
}
p() {
    python3
}

m() {
    ~/cp/make_prob.py $@
}

x() {
    sxiv $@ &disown
}

mkcd() {
    mkdir $1 && cd $1
}


export EDITOR=nvim
export QT_STYLE_OVERRIDE=Fusion
