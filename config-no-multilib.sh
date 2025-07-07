#!/bin/bash

cd

sudo pacman-key --init && sudo pacman-key --populate

cd

sudo pacman -Syyu --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

cd

yay -Syyu flatpak vulkan-icd-loader grub-btrfs vulkan-driver ffmpeg visual-studio-code-bin clang llvm rustup helm kubectl docker python mesa mesa-utils mpv obs-studio google-gemini-cli github-cli timeshift timeshift-autosnap timeshift-systemd-timer dnsmasq virt-manager qemu-full libvirt

cd

rustup default stable
rustup target add wasm32-unknown-unknown

cd

cargo install dioxus-cli

cd

sudo grub-mkconfig -o /boot/grub/grub.cfg

cd

flatpak install vesktop
flatpak install flatseal
flatpak install app/com.valvesoftware.Steam
flatpak install proton-ge
flatpak install app/com.stremio.Stremio
flatpak install sober
flatpak install bottles
flatpak install flathub org.onlyoffice.desktopeditors

cd

cd Downloads
git clone https://github.com/fumofumoenjoyer/HyDE-config.git
git clone https://github.com/fumofumoenjoyer/dotfiles.git

cd

sudo systemctl daemon-reload
sudo systemctl enable timeshift-boot.timer
sudo systemctl enable timeshift-hourly.timer
sudo systemctl enable docker
sudo systemctl enable libvirtd
sudo systemctl enable virtqemud
sudo systemctl enable virtxend
sudo systemctl enable virtlxcd
sudo systemctl enable virtbhyved
sudo systemctl enable virtvboxd
sudo systemctl enable virtinterfaced
sudo systemctl enable virtnetworkd
sudo systemctl enable virtnodedevd
sudo systemctl enable virtnwfilterd
sudo systemctl enable virtsecretd
sudo systemctl enable virtstoraged
sudo systemctl enable grub-btrfsd
sudo systemctl start grub-btrfsd

cd

yay -Syu reflector-simple
yay -Scc

cd

sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
