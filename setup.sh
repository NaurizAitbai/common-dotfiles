#!/bin/sh

# xclip
expac "%n" -Q xclip >/dev/null || sudo pacman -S --noconfirm xclip

# network-manager-applet
expac "%n" -Q network-manager-applet >/dev/null || sudo pacman -S --noconfirm network-manager-applet

# pamixer
expac "%n" -Q pamixer >/dev/null || sudo pacman -S --noconfirm pamixer

# setxkbmap
expac "%n" -Q xorg-setxkbmap >/dev/null || sudo pacman -S --noconfirm xorg-setxkbmap

# xsetroot
expac "%n" -Q xorg-xsetroot >/dev/null || sudo pacman -S --noconfirm xorg-xsetroot

# i3lock
expac "%n" -Q i3lock >/dev/null || sudo pacman -S --noconfirm i3lock


# ranger
expac "%n" -Q ranger >/dev/null || sudo pacman -S --noconfirm ranger

[ -d $HOME/.config/ranger ] || mkdir -p $HOME/.config/ranger

ln -sf $(realpath config/ranger/*) $HOME/.config/ranger/


# dunst
expac "%n" -Q dunst >/dev/null || sudo pacman -S --noconfirm dunst

[ -d $HOME/.config/dunst ] || mkdir -p $HOME/.config/dunst

ln -sf $(realpath config/dunst/*) $HOME/.config/dunst/


# sxhkd
expac "%n" -Q sxhkd >/dev/null || sudo pacman -S --noconfirm sxhkd

[ -d $HOME/.config/sxhkd ] || mkdir -p $HOME/.config/sxhkd

ln -sf $(realpath config/sxhkd/*) $HOME/.config/sxhkd/


# binaries
[ -d $HOME/.local/bin ] || mkdir -p $HOME/.local/bin

ln -sf $(realpath bin/*) $HOME/.local/bin

# execution permissions for binaries
chmod +x bin/*

# link config files
ln -sf $(realpath config/bashrc) $HOME/.bashrc
ln -sf $(realpath config/vimrc) $HOME/.vimrc
ln -sf $(realpath config/xinitrc) $HOME/.xinitrc


# link user-dirs
ln -sf $(realpath config/user-dirs.dirs) $HOME/.config/user-dirs.dirs