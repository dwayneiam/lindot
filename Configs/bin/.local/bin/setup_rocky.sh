#!/usr/bin/env bash

# Setup flathub and get some apps
sudo flatpak remote-add --if-not-exists flathub \
https://dl.flathub.org/repo/flathub.flatpakrepo

sudo flatpak install flathub \
org.mozilla.firefox \
org.gimp.GIMP \
org.inkscape.Inkscape \
org.kde.kdenlive \
com.obsproject.Studio \
io.mpv.Mpv \
com.github.tchx84.Flatseal \
de.haeckerfelix.Shortwave \
de.haeckerfelix.Fragments \
no.bragefuglseth.Keypunch \
me.proton.Mail \
com.bitwarden.desktop \
com.mattermost.Desktop -y

# Remove unneeded rpm packages
sudo dnf remove \
firefox \
gnome-tour \
gnome-clocks \
gnome-text-editor -y

sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

sudo dnf update -y
# sudo dnf install epel-release -y
# sudo /usr/bin/crb enable
# sudo dnf update -y

# Install some rpm's
sudo dnf install \
cockpit-machines \
cockpit-podman \
dconf-editor \
irssi \
nmap \
sqlite \
tmux \
virt-viewer \
zsh \
sublime-text \
sublime-merge -y

# Add my user to a few groups
sudo usermod -aG libvirt "$USER"
sudo usermod -aG qemu "$USER"
sudo usermod -aG kvm "$USER"
sudo usermod -aG dialout "$USER"
