#!/bin/sh
dnf -y update
dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y install vlc
dnf -y install vim
dnf -y install gimp
dnf -y install gnome-tweak-tool.noarch
dnf -y install nautilus-open-terminal.x86_64
dnf -y install thunderbird

rm -rf ./Desktop ./Documents ./Music ./Pictures ./Public ./Templates ./Videos
mkdir Workplace
