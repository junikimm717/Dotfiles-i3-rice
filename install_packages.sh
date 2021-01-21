INSTALL=1
[ $INSTALL -eq 1 ] || exit 1
which pacman > /dev/null || exit 127
which yay > /dev/null || exit 127

yay -S picom-rounded-corners polybar
sudo pacman -S neovim i3
