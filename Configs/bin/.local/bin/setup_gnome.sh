#!/usr/bin/env bash
#
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
gsettings set org.gnome.desktop.interface locate-pointer true
gsettings set org.gnome.desktop.background picture-uri 'file:///home/dwayne/.local/share/backgrounds/bg%20(26).png'
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///home/dwayne/.local/share/backgrounds/bg%20(26).png'
gsettings set org.gnome.desktop.interface accent-color 'blue'
gsettings set org.gnome.desktop.interface monospace-font-name 'SFMono Nerd Font 14'
gsettings set org.gnome.desktop.interface font-name 'SF Pro Text 11'
gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Text 11'
gsettings set org.gnome.desktop.privacy old-files-age 7
gsettings set org.gnome.desktop.privacy recent-files-max-age 7
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.SessionManager logout-prompt false
gsettings set org.gnome.nautilus.compression default-compression-format 'tar.xz'
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'medium'
gsettings set org.gnome.nautilus.preferences show-delete-permanently true
gsettings set org.gnome.Ptyxis audible-bell false
gsettings set org.gnome.Ptyxis cursor-shape 'ibeam'
gsettings set org.gnome.Ptyxis font-name 'SFMono Nerd Font 14'
gsettings set org.gnome.Ptyxis scrollbar-policy 'never'
gsettings set org.gnome.Ptyxis use-system-font false
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 20.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 6.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3700
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.media-keys calculator "['<super>c']"
gsettings set org.gnome.settings-daemon.plugins.media-keys control-center "['<super>i']"
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<super>e']"
gsettings set org.gnome.settings-daemon.plugins.media-keys www "['<super>b']"
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Super>Return'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'ptyxis --new-window'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Term'
