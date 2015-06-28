#!/bin/sh

# update and install new packages
dnf -y update
dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y install vlc
dnf -y install vim
dnf -y install gimp
dnf -y install gnome-tweak-tool.noarch
dnf -y install nautilus-open-terminal.x86_64
dnf -y install thunderbird
dnf -y install ckermit

# unneeded packages
dnf -y remove rhythmbox.x86_64

# vim config
printf "set number\n" > .vimrc
printf "set title\n" >> .vimrc
printf "set list\n" >> .vimrc
printf "set listchars=tab:>.,trail:.,extends:#,nbsp:.\n" >> .vimrc

# home directory clean up
rm -rf ./Desktop ./Documents ./Music ./Pictures ./Public ./Templates ./Videos
mkdir Workplace

# nautilus config bookmarks
printf 'file:///home/richard/Downloads\nfile:///home/richard/Workplace' > .config/gtk-3.0/bookmarks

# git_config
printf '[user]\n\tname = Richard Wolfert\n\temail = wolfert.richard@gmail.com' > ./.gitconfig


# ssh keys
ssh-keygen -t rsa -b 4096 -C "wolfert.richard@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# extra
dnf -y install cowsay
dnf -y install fortune-mod
